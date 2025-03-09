#!/bin/env python3

import sys
import uuid

namespace = uuid.UUID('{444e31c3-ee95-04cb-a591-3f183a4de890}')

def parse_modinfo(fn):
    with open(fn, "r") as file:
        props = dict()
        for ln in file:
            if any(
                ln.startswith(word)
                for word in ["name", "author", "version"]
            ):
                k, v = ln.split("=")
                k = k.strip()
                v = v.strip().strip('"')
                props[k] = v
        return props["author"], props["name"], props["version"]

if __name__ == "__main__":
    fn = str(sys.argv[1]) if len(sys.argv) > 1 else "mod_info.lua"
    author, name, version = parse_modinfo(fn)
    print(uuid.uuid5(namespace, f"{author} {name} v{version}"))
