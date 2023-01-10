<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreColumnRequest;
use App\Http\Requests\UpdateColumnRequest;
use App\Models\Column;
use App\Services\ColumnService;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class ColumnController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return array|Collection
     */
    public function index(ColumnService $columnService)
    {
        return $columnService->getAllColumns();
    }

    public function sortCards(Request $request, ColumnService $columnService): Column
    {
        $payload = $request->validate([
           'column' => 'required',
           'cards' => 'required|array'
        ]);

        return $columnService->persistSortedCards($payload['column'], $payload['cards']);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreColumnRequest  $request
     * @return Column
     */
    public function store(StoreColumnRequest $request, ColumnService $columnService)
    {
        $payload = $request->validated();
        return $columnService->saveNewColumn($payload);
    }




    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Column  $column
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(Column $column)
    {
        $column->cards()->delete();
        $column->delete();

        return response()->json([
            'deleted' => $column
        ]);
    }
}
