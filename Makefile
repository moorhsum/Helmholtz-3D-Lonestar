CC = icc
CFLAGS = -openmp -I.
OPTFLAG = -O3
DEPS = interpolate3D.h distance_application3D.h finite_difference3D.h tools.h functions.h HelmholtzKernel.h BICGSTAB.h weno.h constants.h frame.h PDE.h
OBJ = interpolate3D.o distance_application3D.o finite_difference3D.o tools.o functions.o HelmholtzKernel.o BICGSTAB.o weno.o large3Dexample2.o

large3Dexample2: $(OBJ)
	$(CC) $(CFLAGS) $(OPTFLAG) -o large3Dexample2 $(OBJ)

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) $(OPTFLAG) -c $< -o $@

.PHONY:	clean

clean:
	rm *.o *~
