u=np.loadtxt('u_00001')
u1=u[1,:]
u1=np.flipud(u1)
fig,ax=plt.subplots()
ax.scatter(x_sinbad,uon_ex)
ax.plot(u1)
ax.set_xlim([50, 65])
plt.show()


hs=np.loadtxt('Hsig_00001')
hs1=hs[1,:]
hs1=np.flipud(hs1)
fig,ax=plt.subplots()
ax.scatter(x_sinbad,hs_sinbad)
ax.plot(hs1)
#ax.set_xlim([50, 65])
plt.show()


dep=np.loadtxt('dep_00001')
dep1=dep[1,:]
dep1=np.flipud(dep1)
fig,ax=plt.subplots()
ax.plot(-dep1)
ax.plot(u1)
ax.scatter(x_sinbad,uon_ex)
#ax.set_xlim([50, 65])
plt.show()
