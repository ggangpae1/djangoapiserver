from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import status

@api_view(['GET'])
def index(request):
    data = {"result":"success", "data": [
        {"id":"시모나", "name":"희정"},
        {"id":"카푸치노", "name":"애영"}
    ]}

    return Response(data, status=status.HTTP_200_OK)