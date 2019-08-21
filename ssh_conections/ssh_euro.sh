#!/bin/bash

sshpass -p '!padtec' ssh -o StrictHostKeyChecking=no -o "ServerAliveInterval 60" ti@172.16.0.86
