//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCTcaplusdbError {
    public struct ResourceUnavailable: TCTcaplusdbErrorType {
        enum Code: String {
            case duplicateClusterName = "ResourceUnavailable.DuplicateClusterName"
            case duplicateTableGroupInfo = "ResourceUnavailable.DuplicateTableGroupInfo"
            case duplicateTableGroupName = "ResourceUnavailable.DuplicateTableGroupName"
            case noAvailableTableGroup = "ResourceUnavailable.NoAvailableTableGroup"
            case other = "ResourceUnavailable"
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

        /// 集群名称重复。
        public static var duplicateClusterName: ResourceUnavailable {
            ResourceUnavailable(.duplicateClusterName)
        }

        /// 重复的表格组id或名称。
        public static var duplicateTableGroupInfo: ResourceUnavailable {
            ResourceUnavailable(.duplicateTableGroupInfo)
        }

        /// 重复的表格组名称。
        public static var duplicateTableGroupName: ResourceUnavailable {
            ResourceUnavailable(.duplicateTableGroupName)
        }

        /// 没有可用的表格组资源。
        public static var noAvailableTableGroup: ResourceUnavailable {
            ResourceUnavailable(.noAvailableTableGroup)
        }

        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }

        public func asTcaplusdbError() -> TCTcaplusdbError {
            let code: TCTcaplusdbError.Code
            switch self.error {
            case .duplicateClusterName:
                code = .resourceUnavailable_DuplicateClusterName
            case .duplicateTableGroupInfo:
                code = .resourceUnavailable_DuplicateTableGroupInfo
            case .duplicateTableGroupName:
                code = .resourceUnavailable_DuplicateTableGroupName
            case .noAvailableTableGroup:
                code = .resourceUnavailable_NoAvailableTableGroup
            case .other:
                code = .resourceUnavailable
            }
            return TCTcaplusdbError(code, context: self.context)
        }
    }
}
