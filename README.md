# EIE-LaTeX
LaTeX style and class files for the Wits School of Electrical &amp; Information Engineering

## E&amp;IE Course Brief and Outline 
The class file is contained within the `cbo` directory. Also available is a template file (`eie-cbo-template`) which uses the class file and offers guidance, via comments, for completing the various sections.

The `eie-cbo-example`, and its corresponding LaTeX file provide an example of a completed CBO.

If you have any suggestions for improving the style file and/or example, please notify me (@stephenlevitt), or make a pull-request with your changes.

## Installing the Class File
In order to use this class file, you will need to install them into your LaTeX system.

The file you will need to "install" is: 
`eie-cbo.cls`

####  MiKTeX on Windows
1.  Create a location you can copy the classes and styles to
    -  Windows 10: `C:\Users\<MyUser>\AppData\Local\MiKTeK\<MiKTeX Version>\tex\latex\local`
    -  Windows Vista/7: `C:\Users\<MyUser>\texmf\tex\latex\local\`
2.  Create a `Root` in MikTex
    1.  Open the MikTex Settings (as Admin)
    2.  Select the `Roots` tab
    3.  Select the folder `C:\Users\<MyUser>\AppData\Local\MiKTex\<MiKTeX Version>`
    4.  Click Apply
3.  Tell MiKTeX to refresh it's filename database
    1.  Open the MikTex Settings (as Admin)
    2.  Select the `General` tab
    3.  Click `Refresh FNDB`

You should now be able to use the class for your CBO.