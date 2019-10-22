#!/bin/bash

sshpass -p 'qwe123' ssh -o StrictHostKeyChecking=no -o "ServerAliveInterval 60" padtec@192.168.2.25
