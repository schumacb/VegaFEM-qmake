
TEMPLATE = subdirs

SUBDIRS += \
    camera \
    clothBW \
    configFile \
    corotationalLinearFEM \
    elasticForceModel \
    forceModel \
    getopts \
    glslPhong \
    graph \
    hashTable \
    imageIO \
    insertRows \
    integrator \
    integratorDense \
    integratorSparse \
    isotropicHyperelasticFEM \
    lighting \
    loadList \
    massSpringSystem \
    matrix \
    matrixIO \
    minivector \
    modalMatrix \
    objMesh \
    objMeshGPUDeformer \
    openGLHelper \
    performanceCounter \
    polarDecomposition \
    quaternion \
    reducedForceModel \ #used by reducedElasticForceModel
    reducedElasticForceModel \
    reducedStvk \
    renderVolumetricMesh \
    rigidBodyDynamics \
    sceneObject \
    sceneObjectReduced \
    sparseMatrix \
    sparseSolver \
    stvk \
    volumetricMesh

CONFIG += ordered
