set ns [new Simulator]
set nf [open out1.nam w]
$ns namtrace-all $nf
proc finish {} {
	global ns nf
	$ns flush-trace
	close $nf
	exec nam out.nam &
	exit 0
}
$ns at 5.0 "finish"
#Run the simulation
$ns run
