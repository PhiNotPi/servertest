sub readall{
    local $allcontents = "";
    open(local $fh, '<',$_[0]);
    while(local $dat = <$fh>){
        $allcontents .= $dat;
    }
    $allcontents;
}
print readall("results.txt");
