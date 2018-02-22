#!/bin/bash

# Avrora
echo "No Hprof"
java -jar dacapo-9.12-bach.jar avrora -s large
echo "Normal Hprof"
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar avrora -s large
echo "Hprof with BCI trigger events but events do nothing"
java -agentpath:"./libs/libhprof_bci_trigger_events_events_do_nothing.so" -jar dacapo-9.12-bach.jar avrora -s large
echo "Hprof with BCI is not triggered"
java -agentpath:"./libs/libhprof_no_bci_trigger.so" -jar dacapo-9.12-bach.jar avrora -s large

# Batik
echo "No Hprof"
java -jar dacapo-9.12-bach.jar batik -s large
echo "Normal Hprof"
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar batik -s large
echo "Hprof with BCI trigger events but events do nothing"
java -agentpath:"./libs/libhprof_bci_trigger_events_events_do_nothing.so" -jar dacapo-9.12-bach.jar batik -s large
echo "Hprof with BCI is not triggered"
java -agentpath:"./libs/libhprof_no_bci_trigger.so" -jar dacapo-9.12-bach.jar batik -s large

# Fop
echo "No Hprof"
java -jar dacapo-9.12-bach.jar fop -s large
echo "Normal Hprof"
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar fop -s large
echo "Hprof with BCI trigger events but events do nothing"
java -agentpath:"./libs/libhprof_bci_trigger_events_events_do_nothing.so" -jar dacapo-9.12-bach.jar fop -s large
echo "Hprof with BCI is not triggered"
java -agentpath:"./libs/libhprof_no_bci_trigger.so" -jar dacapo-9.12-bach.jar fop -s large

# h2
echo "No Hprof"
java -jar dacapo-9.12-bach.jar h2 -s large
echo "Normal Hprof"
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar h2 -s large
echo "Hprof with BCI trigger events but events do nothing"
java -agentpath:"./libs/libhprof_bci_trigger_events_events_do_nothing.so" -jar dacapo-9.12-bach.jar h2 -s large
echo "Hprof with BCI is not triggered"
java -agentpath:"./libs/libhprof_no_bci_trigger.so" -jar dacapo-9.12-bach.jar h2 -s large

# jython
echo "No Hprof"
java -jar dacapo-9.12-bach.jar jython -s large
echo "Normal Hprof"
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar jython -s large
echo "Hprof with BCI trigger events but events do nothing"
java -agentpath:"./libs/libhprof_bci_trigger_events_events_do_nothing.so" -jar dacapo-9.12-bach.jar jython -s large
echo "Hprof with BCI is not triggered"
java -agentpath:"./libs/libhprof_no_bci_trigger.so" -jar dacapo-9.12-bach.jar jython -s large

# luindex
echo "No Hprof"
java -jar dacapo-9.12-bach.jar luindex -s large
echo "Normal Hprof"
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar luindex -s large
echo "Hprof with BCI trigger events but events do nothing"
java -agentpath:"./libs/libhprof_bci_trigger_events_events_do_nothing.so" -jar dacapo-9.12-bach.jar luindex -s large
echo "Hprof with BCI is not triggered"
java -agentpath:"./libs/libhprof_no_bci_trigger.so" -jar dacapo-9.12-bach.jar luindex -s large

# lusearch
echo "No Hprof"
java -jar dacapo-9.12-bach.jar lusearch -s large
echo "Normal Hprof"
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar lusearch -s large
echo "Hprof with BCI trigger events but events do nothing"
java -agentpath:"./libs/libhprof_bci_trigger_events_events_do_nothing.so" -jar dacapo-9.12-bach.jar lusearch -s large
echo "Hprof with BCI is not triggered"
java -agentpath:"./libs/libhprof_no_bci_trigger.so" -jar dacapo-9.12-bach.jar lusearch -s large

# pmd
echo "No Hprof"
java -jar dacapo-9.12-bach.jar pmd -s large
echo "Normal Hprof"
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar pmd -s large
echo "Hprof with BCI trigger events but events do nothing"
java -agentpath:"./libs/libhprof_bci_trigger_events_events_do_nothing.so" -jar dacapo-9.12-bach.jar pmd -s large
echo "Hprof with BCI is not triggered"
java -agentpath:"./libs/libhprof_no_bci_trigger.so" -jar dacapo-9.12-bach.jar pmd -s large

# sunflow
echo "No Hprof"
java -jar dacapo-9.12-bach.jar sunflow -s large
echo "Normal Hprof"
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar sunflow -s large
echo "Hprof with BCI trigger events but events do nothing"
java -agentpath:"./libs/libhprof_bci_trigger_events_events_do_nothing.so" -jar dacapo-9.12-bach.jar sunflow -s large
echo "Hprof with BCI is not triggered"
java -agentpath:"./libs/libhprof_no_bci_trigger.so" -jar dacapo-9.12-bach.jar sunflow -s large

# tradebeans
echo "No Hprof"
java -jar dacapo-9.12-bach.jar tradebeans -s large
echo "Normal Hprof"
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar tradebeans -s large
echo "Hprof with BCI trigger events but events do nothing"
java -agentpath:"./libs/libhprof_bci_trigger_events_events_do_nothing.so" -jar dacapo-9.12-bach.jar tradebeans -s large
echo "Hprof with BCI is not triggered"
java -agentpath:"./libs/libhprof_no_bci_trigger.so" -jar dacapo-9.12-bach.jar tradebeans -s large

# Tradesoap
echo "No Hprof"
java -jar dacapo-9.12-bach.jar tradesoap -s large
echo "Normal Hprof"
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar tradesoap -s large
echo "Hprof with BCI trigger events but events do nothing"
java -agentpath:"./libs/libhprof_bci_trigger_events_events_do_nothing.so" -jar dacapo-9.12-bach.jar tradesoap -s large
echo "Hprof with BCI is not triggered"
java -agentpath:"./libs/libhprof_no_bci_trigger.so" -jar dacapo-9.12-bach.jar tradesoap -s large

# Xalan
echo "No Hprof"
java -jar dacapo-9.12-bach.jar xalan -s large
echo "Normal Hprof"
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar xalan -s large
echo "Hprof with BCI trigger events but events do nothing"
java -agentpath:"./libs/libhprof_bci_trigger_events_events_do_nothing.so" -jar dacapo-9.12-bach.jar xalan -s large
echo "Hprof with BCI is not triggered"
java -agentpath:"./libs/libhprof_no_bci_trigger.so" -jar dacapo-9.12-bach.jar xalan -s large
