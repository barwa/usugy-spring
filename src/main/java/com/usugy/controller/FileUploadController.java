package com.usugy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

/**
 * Created by tomek on 2016-11-02.
 */

@RestController
public class FileUploadController {

    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    public @ResponseBody
    String uploadFileHandler(@RequestParam("name") String name,
                             @RequestParam("file") MultipartFile file) {

        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();

                // Creating the directory to store file
                String rootPath = System.getProperty("catalina.home");
                File dir = new File(rootPath + File.separator + "tmpFiles");
                if (!dir.exists())
                    dir.mkdirs();

                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + name);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();


                return "You successfully uploaded file=" + name;
            } catch (Exception e) {
                return "You failed to upload " + name + " => " + e.getMessage();
            }
        } else {
            return "You failed to upload " + name
                    + " because the file was empty.";
        }
    }

    /**
     * Upload multiple file using Spring Controller
     */
    @RequestMapping(value = "/uploadMultipleFile", method = RequestMethod.POST)
    public @ResponseBody String uploadMultipleFileHandler(@RequestParam("file_data") MultipartFile[] files) {



        String message = "";
        for (int i = 0; i < files.length; i++) {
            MultipartFile file = files[i];
            String name = file.getOriginalFilename();
            System.out.println(name);
            try {
                byte[] bytes = file.getBytes();

                // Creating the directory to store file
                String rootPath = System.getProperty("catalina.home");
                File dir = new File(rootPath + File.separator + "tmpFiles");
                if (!dir.exists())
                    dir.mkdirs();

                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + name);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();

//                message = message + "You successfully uploaded file=" + name
//                        + " ";
                message = "{}";
            } catch (Exception e) {
                return "{error: 'You failed to upload " + name + " => " + e.getMessage()+" '}";
            }
        }
        return message;
    }

    /**
     * Upload multiple file using Spring Controller
     */
    @RequestMapping(value = "/removeFile", method = RequestMethod.POST)
    public @ResponseBody String removeFileHandler(@RequestParam("file_data") MultipartFile file) {


        System.out.println("jestem tutaj "+file.getOriginalFilename());
        String message = "";

        if (!file.isEmpty()) {
            try {

                // Creating the directory to store file
                String rootPath = System.getProperty("catalina.home");
                File dir = new File(rootPath + File.separator + "tmpFiles");

                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + file.getOriginalFilename());
                serverFile.delete();

                return "You successfully removed file=" + file.getOriginalFilename();
            } catch (Exception e) {
                return "{error: 'You failed to remove " + file.getOriginalFilename() + " => " + e.getMessage()+" '}";
            }
        } else {
            return "{error: 'You failed to remove " + file.getOriginalFilename()+ " '}";
        }
    }
}

