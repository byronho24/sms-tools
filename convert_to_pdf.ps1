foreach ($file in (Get-ChildItem -Path .\ -Filter *.odp -Recurse | %{$_.FullName}))
{
   &("C:\Program Files\LibreOffice\program\soffice.exe") -headless -convert-to pdf:impress_pdf_Export -outdir .\pdfs $file | Out-Null
}