//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCChdfsError {
    public struct InvalidParameterValue: TCChdfsErrorType {
        enum Code: String {
            case invalidAccessGroupId = "InvalidParameterValue.InvalidAccessGroupId"
            case invalidAccessGroupName = "InvalidParameterValue.InvalidAccessGroupName"
            case invalidAccessRuleAddress = "InvalidParameterValue.InvalidAccessRuleAddress"
            case invalidCapacityQuota = "InvalidParameterValue.InvalidCapacityQuota"
            case invalidDescription = "InvalidParameterValue.InvalidDescription"
            case invalidFileSystemId = "InvalidParameterValue.InvalidFileSystemId"
            case invalidFileSystemName = "InvalidParameterValue.InvalidFileSystemName"
            case invalidMountPointId = "InvalidParameterValue.InvalidMountPointId"
            case invalidMountPointName = "InvalidParameterValue.InvalidMountPointName"
            case invalidVpcId = "InvalidParameterValue.InvalidVpcId"
            case other = "InvalidParameterValue"
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

        /// AccessGroupId?????????????????????
        public static var invalidAccessGroupId: InvalidParameterValue {
            InvalidParameterValue(.invalidAccessGroupId)
        }

        /// AccessGroupName?????????????????????
        public static var invalidAccessGroupName: InvalidParameterValue {
            InvalidParameterValue(.invalidAccessGroupName)
        }

        /// ???????????????Address?????????????????????
        public static var invalidAccessRuleAddress: InvalidParameterValue {
            InvalidParameterValue(.invalidAccessRuleAddress)
        }

        /// CapacityQuota?????????????????????
        public static var invalidCapacityQuota: InvalidParameterValue {
            InvalidParameterValue(.invalidCapacityQuota)
        }

        /// Description?????????????????????
        public static var invalidDescription: InvalidParameterValue {
            InvalidParameterValue(.invalidDescription)
        }

        /// FileSystemId?????????????????????
        public static var invalidFileSystemId: InvalidParameterValue {
            InvalidParameterValue(.invalidFileSystemId)
        }

        /// FileSystemName?????????????????????
        public static var invalidFileSystemName: InvalidParameterValue {
            InvalidParameterValue(.invalidFileSystemName)
        }

        /// MountPointId?????????????????????
        public static var invalidMountPointId: InvalidParameterValue {
            InvalidParameterValue(.invalidMountPointId)
        }

        /// MountPointName?????????????????????
        public static var invalidMountPointName: InvalidParameterValue {
            InvalidParameterValue(.invalidMountPointName)
        }

        /// VpcId?????????????????????
        public static var invalidVpcId: InvalidParameterValue {
            InvalidParameterValue(.invalidVpcId)
        }

        /// ?????????????????????
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asChdfsError() -> TCChdfsError {
            let code: TCChdfsError.Code
            switch self.error {
            case .invalidAccessGroupId: 
                code = .invalidParameterValue_InvalidAccessGroupId
            case .invalidAccessGroupName: 
                code = .invalidParameterValue_InvalidAccessGroupName
            case .invalidAccessRuleAddress: 
                code = .invalidParameterValue_InvalidAccessRuleAddress
            case .invalidCapacityQuota: 
                code = .invalidParameterValue_InvalidCapacityQuota
            case .invalidDescription: 
                code = .invalidParameterValue_InvalidDescription
            case .invalidFileSystemId: 
                code = .invalidParameterValue_InvalidFileSystemId
            case .invalidFileSystemName: 
                code = .invalidParameterValue_InvalidFileSystemName
            case .invalidMountPointId: 
                code = .invalidParameterValue_InvalidMountPointId
            case .invalidMountPointName: 
                code = .invalidParameterValue_InvalidMountPointName
            case .invalidVpcId: 
                code = .invalidParameterValue_InvalidVpcId
            case .other: 
                code = .invalidParameterValue
            }
            return TCChdfsError(code, context: self.context)
        }
    }
}
