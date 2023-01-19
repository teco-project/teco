//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCOceanusError {
    public struct ResourceInUse: TCOceanusErrorType {
        enum Code: String {
            case instanceInProcess = "ResourceInUse.InstanceInProcess"
            case resourceNameAlreadyExists = "ResourceInUse.ResourceNameAlreadyExists"
            case other = "ResourceInUse"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 集群有其他操作。
        public static var instanceInProcess: ResourceInUse {
            ResourceInUse(.instanceInProcess)
        }

        /// 资源名称已存在。
        public static var resourceNameAlreadyExists: ResourceInUse {
            ResourceInUse(.resourceNameAlreadyExists)
        }

        /// 资源被占用。
        public static var other: ResourceInUse {
            ResourceInUse(.other)
        }

        public func asOceanusError() -> TCOceanusError {
            let code: TCOceanusError.Code
            switch self.error {
            case .instanceInProcess:
                code = .resourceInUse_InstanceInProcess
            case .resourceNameAlreadyExists:
                code = .resourceInUse_ResourceNameAlreadyExists
            case .other:
                code = .resourceInUse
            }
            return TCOceanusError(code, context: self.context)
        }
    }
}
