package main

import (
	"testing"
	"github.com/stretchr/testify/assert"
)

func TestGenerateMsg(t *testing.T) {
	tagName := "tagZ"
	request := Request{}
	request.QueryStringParameters = map[string]string{"tagName": tagName}
	result := extractTagName(request)
	assert.Equal(t,result, tagName)
}
