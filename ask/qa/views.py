from django.shortcuts import render
from django.http import HttpResponse


def test(request, *args, **kwargs):
	return HttpResponse('OK')

def empty(request)
	return HttpResponse('OK')

def question(request, id)
	output = '<h2> id </h2>'
	return HttpResponse(output)


# Create your views here.
