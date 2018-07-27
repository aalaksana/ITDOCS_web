<?php

/**
 * Controller genrated using LaraAdmin
 * Help: http://laraadmin.com
 */ 

namespace App\Http\Controllers\LA;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Requests;
use DB;
use Exception;
use clsTinyButStrong;
use App\Models\Project;

class ProjectCetakController extends Controller
{
    public function __construct()
    {
        
    }

    public function cetakTBS($id)
    {
        $rows = DB::select("
            SELECT id,
                IFNULL (proyek,'-') AS proyek,
                IFNULL (DATE_FORMAT(printDate,'%d-%m-%Y'),'-') AS printDate,
                IFNULL (dsrHukum,'-') AS dsrHukum,
                IFNULL (desProyek,'-') AS desProyek,
                IFNULL (DATE_FORMAT(startDate,'%d-%m-%Y'),'-') AS startDate,
                IFNULL (DATE_FORMAT(endDate,'%d-%m-%Y'),'-') AS endDate,
                IFNULL (probisUnit,'-') AS probisUnit,
                IFNULL (probisName,'-') AS probisName,
                IFNULL (probisNIP,'-') AS probisNIP,
                IFNULL (prostafName,'-') AS prostafName,
                IFNULL (prostafNIP,'-') AS prostafNIP,
                IFNULL (devUnit,'-') AS devUnit,
                IFNULL (devName,'-') AS devName,
                IFNULL (devNIP,'-') AS devNIP,
                IFNULL (analName,'-') AS analName,
                IFNULL (analNIP,'-') AS analNIP,
                IFNULL (proName,'-') AS proName,
                IFNULL (proNIP,'-') AS proNIP,
                IFNULL (testName,'-') AS testName,
                IFNULL (testNIP,'-') AS testNIP,
                IFNULL (suppName,'-') AS suppName,
                IFNULL (suppNIP,'-') AS suppNIP,
                IFNULL (qaUnit,'-') AS qaUnit,
                IFNULL (qaName,'-') AS qaName,
                IFNULL (qaNIP,'-') AS qaNIP,
                IFNULL (prog,'-') AS prog,
                IFNULL (DATE_FORMAT(progendDate,'%d-%m-%Y'),'-') AS progendDate,
                IFNULL (probisJab,'-') AS probisJab,
                IFNULL (nm0Dok,'-') as nm0Dok,
                IFNULL (nm1Dok,'-') as nm1Dok,
                IFNULL (nm2Dok,'-') as nm2Dok,
                IFNULL (nm3Dok,'-') as nm3Dok,
                IFNULL (nm4Dok,'-') as nm4Dok,
                IFNULL (nm5Dok,'-') as nm5Dok,
                IFNULL (nm6Dok,'-') as nm6Dok,
                IFNULL (nm7Dok,'-') as nm7Dok,
                IFNULL (nm70Dok,'-') as nm70Dok,
                IFNULL (nm71Dok,'-') as nm71Dok,
                IFNULL (nm8Dok,'-') as nm8Dok,
                IFNULL (nm81Dok,'-') as nm81Dok,
                IFNULL (nm9Dok,'-') as nm9Dok,
                IFNULL (nm10Dok,'-') as nm10Dok,
                IFNULL (nm11Dok,'-') as nm11Dok,
                IFNULL (nm12Dok,'-') as nm12Dok,
                IFNULL (nm13Dok,'-') as nm13Dok,
                IFNULL (nm14Dok,'-') as nm14Dok,
                IFNULL (nm15Dok,'-') as nm15Dok,
                IFNULL (DATE_FORMAT(dok0Date,'%d-%m-%Y'),'-') AS dok0Date,
                IFNULL (DATE_FORMAT(dok1Date,'%d-%m-%Y'),'-') AS dok1Date,
                IFNULL (DATE_FORMAT(dok2Date,'%d-%m-%Y'),'-') AS dok2Date,
                IFNULL (DATE_FORMAT(dok3Date,'%d-%m-%Y'),'-') AS dok3Date,
                IFNULL (DATE_FORMAT(dok4Date,'%d-%m-%Y'),'-') AS dok4Date,
                IFNULL (DATE_FORMAT(dok5Date,'%d-%m-%Y'),'-') AS dok5Date,
                IFNULL (DATE_FORMAT(dok6Date,'%d-%m-%Y'),'-') AS dok6Date,
                IFNULL (DATE_FORMAT(dok7Date,'%d-%m-%Y'),'-') AS dok7Date,
                IFNULL (DATE_FORMAT(dok70Date,'%d-%m-%Y'),'-') AS dok70Date,
                IFNULL (DATE_FORMAT(dok71Date,'%d-%m-%Y'),'-') AS dok71Date,
                IFNULL (DATE_FORMAT(dok8Date,'%d-%m-%Y'),'-') AS dok8Date,
                IFNULL (DATE_FORMAT(dok81Date,'%d-%m-%Y'),'-') AS dok81Date,
                IFNULL (DATE_FORMAT(dok9Date,'%d-%m-%Y'),'-') AS dok9Date,
                IFNULL (DATE_FORMAT(dok10Date,'%d-%m-%Y'),'-') AS dok10Date,
                IFNULL (DATE_FORMAT(dok11Date,'%d-%m-%Y'),'-') AS dok11Date,
                IFNULL (DATE_FORMAT(dok12Date,'%d-%m-%Y'),'-') AS dok12Date,
                IFNULL (DATE_FORMAT(dok13Date,'%d-%m-%Y'),'-') AS dok13Date,
                IFNULL (DATE_FORMAT(dok14Date,'%d-%m-%Y'),'-') AS dok14Date,
                IFNULL (DATE_FORMAT(dok15Date,'%d-%m-%Y'),'-') AS dok15Date,
                IFNULL (DATE_FORMAT(up0Date,'%d-%m-%Y'),'-') AS up0Date,
                IFNULL (DATE_FORMAT(up1Date,'%d-%m-%Y'),'-') AS up1Date,
                IFNULL (DATE_FORMAT(up2Date,'%d-%m-%Y'),'-') AS up2Date,
                IFNULL (DATE_FORMAT(up3Date,'%d-%m-%Y'),'-') AS up3Date,
                IFNULL (DATE_FORMAT(up4Date,'%d-%m-%Y'),'-') AS up4Date,
                IFNULL (DATE_FORMAT(up5Date,'%d-%m-%Y'),'-') AS up5Date,
                IFNULL (DATE_FORMAT(up6Date,'%d-%m-%Y'),'-') AS up6Date,
                IFNULL (DATE_FORMAT(up7Date,'%d-%m-%Y'),'-') AS up7Date,
                IFNULL (DATE_FORMAT(up70Date,'%d-%m-%Y'),'-') AS up70Date,
                IFNULL (DATE_FORMAT(up71Date,'%d-%m-%Y'),'-') AS up71Date,
                IFNULL (DATE_FORMAT(up8Date,'%d-%m-%Y'),'-') AS up8Date,
                IFNULL (DATE_FORMAT(up81Date,'%d-%m-%Y'),'-') AS up81Date,
                IFNULL (DATE_FORMAT(up9Date,'%d-%m-%Y'),'-') AS up9Date,
                IFNULL (DATE_FORMAT(up10Date,'%d-%m-%Y'),'-') AS up10Date,
                IFNULL (DATE_FORMAT(up11Date,'%d-%m-%Y'),'-') AS up11Date,
                IFNULL (DATE_FORMAT(up12Date,'%d-%m-%Y'),'-') AS up12Date,
                IFNULL (DATE_FORMAT(up13Date,'%d-%m-%Y'),'-') AS up13Date,
                IFNULL (DATE_FORMAT(up14Date,'%d-%m-%Y'),'-') AS up14Date,
                IFNULL (DATE_FORMAT(up15Date,'%d-%m-%Y'),'-') AS up15Date
            FROM testreport
            WHERE id = ?
        ", [$id]);

        $obj[] = (object)[
            'proyek' => $rows[0] -> proyek,
            'printDate' => $rows[0] -> printDate,
            'dsrHukum' => $rows[0] -> dsrHukum,
            'desProyek' => $rows[0] -> desProyek,
            'startDate' => $rows[0] -> startDate,
            'endDate' => $rows[0] -> endDate,
            'probisUnit' => $rows[0] -> probisUnit,
            'probisName' => $rows[0] -> probisName,
            'probisNIP' => $rows[0] -> probisNIP,
            'prostafName' => $rows[0]-> prostafName,
            'prostafNIP' => $rows[0]-> prostafNIP,
            'devUnit' => $rows[0] -> devUnit,
            'devName' => $rows[0] -> devName,
            'devNIP' => $rows[0] -> devNIP,
            'analName' => $rows[0] -> analName,
            'analNIP' => $rows[0] -> analNIP,
            'proName' => $rows[0] -> proName,
            'proNIP' => $rows[0] -> proNIP,
            'testName' => $rows[0] -> testName,
            'testNIP' => $rows[0] -> testNIP,
            'suppName' => $rows[0] -> suppName,
            'suppNIP' => $rows[0] -> suppNIP,
            'qaUnit' => $rows[0] -> qaUnit,
            'qaName' => $rows[0] -> qaName,
            'qaNIP' => $rows[0] -> qaNIP,
            'prog' => $rows[0] -> prog,
            'progendDate' => $rows[0] -> progendDate,
            'probisJab' => $rows[0] -> probisJab,
            'nm0Dok' => $rows[0] -> nm0Dok,
            'nm1Dok' => $rows[0] -> nm1Dok,
            'nm2Dok' => $rows[0] -> nm2Dok,
            'nm3Dok' => $rows[0] -> nm3Dok,
            'nm4Dok' => $rows[0] -> nm4Dok,
            'nm5Dok' => $rows[0] -> nm5Dok,
            'nm6Dok' => $rows[0] -> nm6Dok,
            'nm7Dok' => $rows[0] -> nm7Dok,
            'nm70Dok' => $rows[0] -> nm70Dok,
            'nm71Dok' => $rows[0] -> nm71Dok,
            'nm8Dok' => $rows[0] -> nm8Dok,
            'nm81Dok' => $rows[0] -> nm81Dok,
            'nm9Dok' => $rows[0] -> nm9Dok,
            'nm10Dok' => $rows[0] -> nm10Dok,
            'nm11Dok' => $rows[0] -> nm11Dok,
            'nm12Dok' => $rows[0] -> nm12Dok,
            'nm13Dok' => $rows[0] -> nm13Dok,
            'nm14Dok' => $rows[0] -> nm14Dok,
            'nm15Dok' => $rows[0] -> nm15Dok,
            'dok0Date' => $rows[0] -> dok0Date,
            'dok1Date' => $rows[0] -> dok1Date,
            'dok2Date' => $rows[0] -> dok2Date,
            'dok3Date' => $rows[0] -> dok3Date,
            'dok4Date' => $rows[0] -> dok4Date,
            'dok5Date' => $rows[0] -> dok5Date,
            'dok6Date' => $rows[0] -> dok6Date,
            'dok7Date' => $rows[0] -> dok7Date,
            'dok70Date' => $rows[0] -> dok70Date,
            'dok71Date' => $rows[0] -> dok71Date,
            'dok8Date' => $rows[0] -> dok8Date,
            'dok81Date' => $rows[0] -> dok81Date,
            'dok9Date' => $rows[0] -> dok9Date,
            'dok10Date' => $rows[0] -> dok10Date,
            'dok11Date' => $rows[0] -> dok11Date,
            'dok12Date' => $rows[0] -> dok12Date,
            'dok13Date' => $rows[0] -> dok13Date,
            'dok14Date' => $rows[0] -> dok14Date,
            'dok15Date' => $rows[0] -> dok15Date,
            'up0Date' => $rows[0] -> up0Date,
            'up1Date' => $rows[0] -> up1Date,
            'up2Date' => $rows[0] -> up2Date,
            'up3Date' => $rows[0] -> up3Date,
            'up4Date' => $rows[0] -> up4Date,
            'up5Date' => $rows[0] -> up5Date,
            'up6Date' => $rows[0] -> up6Date,
            'up7Date' => $rows[0] -> up7Date,
            'up70Date' => $rows[0] -> up70Date,
            'up71Date' => $rows[0] -> up71Date,
            'up8Date' => $rows[0] -> up8Date,
            'up81Date' => $rows[0] -> up81Date,
            'up9Date' => $rows[0] -> up9Date,
            'up10Date' => $rows[0] -> up10Date,
            'up11Date' => $rows[0] -> up11Date,
            'up12Date' => $rows[0] -> up12Date,
            'up13Date' => $rows[0] -> up13Date,
            'up14Date' => $rows[0] -> up14Date,
            'up15Date' => $rows[0] -> up15Date,
        ];

        $TBS = new clsTinyButStrong();
        $TBS->PlugIn(TBS_INSTALL, OPENTBS_PLUGIN);
        $TBS->LoadTemplate('tbs_template/'.'lapProgress.docx');
        $TBS->MergeBlock('v', $obj);
        $TBS->Show(OPENTBS_DOWNLOAD, 'Laporan Progress Proyek '.$rows[0]->proyek.'.docx');
    }
}

