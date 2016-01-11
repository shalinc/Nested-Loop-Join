test_NLJ:
	gcc -w buffer_mgr.c buffer_mgr_stat.c dberror.c storage_mgr.c expr.c record_mgr.c rm_deserializer.c rm_serializer.c test_nested_loop_join.c -o test_NLJ
	./test_NLJ

test_recordManager:
	gcc -w buffer_mgr.c buffer_mgr_stat.c dberror.c storage_mgr.c expr.c record_mgr.c rm_deserializer.c rm_serializer.c test_assign3_1.c -o test_assign3_1
	./test_assign3_1

clean:
	$(RM) test_assign3_1
	$(RM) test_NLJ
