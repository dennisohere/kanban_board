<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Spatie\DbDumper\Databases\MySql;

class DataController extends Controller
{
    public function exportDb()
    {
        $databaseName = env('DB_DATABASE');
        $userName = env('DB_USERNAME');
        $password = env('DB_PASSWORD');

        $dump_path = storage_path('dumps/dump.sql');

        MySql::create()->setDbName($databaseName)
            ->setDumpBinaryPath(env('DB_DUMP_PATH'))
            ->setUserName($userName)
            ->setPassword($password)
            ->setDbName($databaseName)
            ->setSocket(env('DUMP_SOCK_FILE', '/tmp/mysql.sock'))
            ->dumpToFile($dump_path);

        return response()->download($dump_path);
    }
}
