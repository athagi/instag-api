package main

import (
	"testing"
	"github.com/stretchr/testify/assert"
)

func TestGenerateDummyRes(t *testing.T) {
	
	result := generateDummyRes()
	expect := []string{"tagA", "tagB", "tagC", "tag-----------D"}
	assert.Equal(t, result, expect)
}
