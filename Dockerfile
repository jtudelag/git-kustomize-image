FROM registry.access.redhat.com/ubi8/ubi-minimal:8.3

# TODO: Use a multistage build, remove deps (tar, curl) from final image.
RUN microdnf install --nodocs tar git curl

# TODO: Install kustomize pinnd to an specific version
RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash && \
    mv ./kustomize /usr/local/bin/kustomize

USER 1001
