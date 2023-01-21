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

extension TCCvmError {
    public struct InvalidParameter: TCCvmErrorType {
        enum Code: String {
            case atMostOne = "InvalidParameter.AtMostOne"
            case dataDiskIdContainsRootDisk = "InvalidParameter.DataDiskIdContainsRootDisk"
            case dataDiskNotBelongSpecifiedInstance = "InvalidParameter.DataDiskNotBelongSpecifiedInstance"
            case duplicateSystemSnapshots = "InvalidParameter.DuplicateSystemSnapshots"
            case hostIdStatusNotSupport = "InvalidParameter.HostIdStatusNotSupport"
            case hostNameIllegal = "InvalidParameter.HostNameIllegal"
            case imageIdsSnapshotIdsMustOne = "InvalidParameter.ImageIdsSnapshotIdsMustOne"
            case instanceImageNotSupport = "InvalidParameter.InstanceImageNotSupport"
            case internetAccessibleNotSupported = "InvalidParameter.InternetAccessibleNotSupported"
            case invalidCloudDiskSoldOut = "InvalidParameter.InvalidCloudDiskSoldOut"
            case invalidDependence = "InvalidParameter.InvalidDependence"
            case invalidInstanceNotSupported = "InvalidParameter.InvalidInstanceNotSupported"
            case invalidIpFormat = "InvalidParameter.InvalidIpFormat"
            case invalidParameterCoexistImageIdsFilters = "InvalidParameter.InvalidParameterCoexistImageIdsFilters"
            case invalidParameterUrlError = "InvalidParameter.InvalidParameterUrlError"
            case lackCoreCountOrThreadPerCore = "InvalidParameter.LackCoreCountOrThreadPerCore"
            case localDataDiskNotSupport = "InvalidParameter.LocalDataDiskNotSupport"
            case parameterConflict = "InvalidParameter.ParameterConflict"
            case passwordNotSupported = "InvalidParameter.PasswordNotSupported"
            case snapshotNotFound = "InvalidParameter.SnapshotNotFound"
            case specifyOneParameter = "InvalidParameter.SpecifyOneParameter"
            case swapDiskNotSupport = "InvalidParameter.SwapDiskNotSupport"
            case systemSnapshotNotFound = "InvalidParameter.SystemSnapshotNotFound"
            case valueTooLarge = "InvalidParameter.ValueTooLarge"
            case other = "InvalidParameter"
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

        /// 最多指定一个参数。
        public static var atMostOne: InvalidParameter {
            InvalidParameter(.atMostOne)
        }

        /// DataDiskIds不应该传入RootDisk的Id。
        public static var dataDiskIdContainsRootDisk: InvalidParameter {
            InvalidParameter(.dataDiskIdContainsRootDisk)
        }

        /// 指定的数据盘不属于指定的实例。
        public static var dataDiskNotBelongSpecifiedInstance: InvalidParameter {
            InvalidParameter(.dataDiskNotBelongSpecifiedInstance)
        }

        /// 只能包含一个系统盘快照。
        public static var duplicateSystemSnapshots: InvalidParameter {
            InvalidParameter(.duplicateSystemSnapshots)
        }

        /// 该主机当前状态不支持该操作。
        ///
        /// 查询主机当前状态是否满足该操作要求
        public static var hostIdStatusNotSupport: InvalidParameter {
            InvalidParameter(.hostIdStatusNotSupport)
        }

        /// 指定的hostName不符合规范。
        public static var hostNameIllegal: InvalidParameter {
            InvalidParameter(.hostNameIllegal)
        }

        /// 参数ImageIds和SnapshotIds必须有且仅有一个。
        public static var imageIdsSnapshotIdsMustOne: InvalidParameter {
            InvalidParameter(.imageIdsSnapshotIdsMustOne)
        }

        /// 当前接口不支持实例镜像。
        public static var instanceImageNotSupport: InvalidParameter {
            InvalidParameter(.instanceImageNotSupport)
        }

        /// 去掉该请求参数。
        public static var internetAccessibleNotSupported: InvalidParameter {
            InvalidParameter(.internetAccessibleNotSupported)
        }

        /// 云盘资源售罄。
        public static var invalidCloudDiskSoldOut: InvalidParameter {
            InvalidParameter(.invalidCloudDiskSoldOut)
        }

        /// 参数依赖不正确。
        public static var invalidDependence: InvalidParameter {
            InvalidParameter(.invalidDependence)
        }

        /// 当前操作不支持该类型实例。
        public static var invalidInstanceNotSupported: InvalidParameter {
            InvalidParameter(.invalidInstanceNotSupported)
        }

        /// 指定的私有网络ip格式不正确。
        public static var invalidIpFormat: InvalidParameter {
            InvalidParameter(.invalidIpFormat)
        }

        /// 不能同时指定ImageIds和Filters。
        public static var invalidParameterCoexistImageIdsFilters: InvalidParameter {
            InvalidParameter(.invalidParameterCoexistImageIdsFilters)
        }

        /// 错误的url地址。
        public static var invalidParameterUrlError: InvalidParameter {
            InvalidParameter(.invalidParameterUrlError)
        }

        /// CoreCount和ThreadPerCore必须同时提供。
        public static var lackCoreCountOrThreadPerCore: InvalidParameter {
            InvalidParameter(.lackCoreCountOrThreadPerCore)
        }

        /// 本地数据盘不支持创建实例镜像。
        public static var localDataDiskNotSupport: InvalidParameter {
            InvalidParameter(.localDataDiskNotSupport)
        }

        /// 不支持同时指定密钥登陆和保持镜像登陆方式。
        ///
        /// 暂无
        public static var parameterConflict: InvalidParameter {
            InvalidParameter(.parameterConflict)
        }

        /// 不支持设置登陆密码。
        public static var passwordNotSupported: InvalidParameter {
            InvalidParameter(.passwordNotSupported)
        }

        /// 指定的快照不存在。
        public static var snapshotNotFound: InvalidParameter {
            InvalidParameter(.snapshotNotFound)
        }

        /// 多选一必选参数缺失。
        public static var specifyOneParameter: InvalidParameter {
            InvalidParameter(.specifyOneParameter)
        }

        /// 不支持Swap盘。
        public static var swapDiskNotSupport: InvalidParameter {
            InvalidParameter(.swapDiskNotSupport)
        }

        /// 参数不包含系统盘快照。
        public static var systemSnapshotNotFound: InvalidParameter {
            InvalidParameter(.systemSnapshotNotFound)
        }

        /// 参数长度超过限制。
        public static var valueTooLarge: InvalidParameter {
            InvalidParameter(.valueTooLarge)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asCvmError() -> TCCvmError {
            let code: TCCvmError.Code
            switch self.error {
            case .atMostOne:
                code = .invalidParameter_AtMostOne
            case .dataDiskIdContainsRootDisk:
                code = .invalidParameter_DataDiskIdContainsRootDisk
            case .dataDiskNotBelongSpecifiedInstance:
                code = .invalidParameter_DataDiskNotBelongSpecifiedInstance
            case .duplicateSystemSnapshots:
                code = .invalidParameter_DuplicateSystemSnapshots
            case .hostIdStatusNotSupport:
                code = .invalidParameter_HostIdStatusNotSupport
            case .hostNameIllegal:
                code = .invalidParameter_HostNameIllegal
            case .imageIdsSnapshotIdsMustOne:
                code = .invalidParameter_ImageIdsSnapshotIdsMustOne
            case .instanceImageNotSupport:
                code = .invalidParameter_InstanceImageNotSupport
            case .internetAccessibleNotSupported:
                code = .invalidParameter_InternetAccessibleNotSupported
            case .invalidCloudDiskSoldOut:
                code = .invalidParameter_InvalidCloudDiskSoldOut
            case .invalidDependence:
                code = .invalidParameter_InvalidDependence
            case .invalidInstanceNotSupported:
                code = .invalidParameter_InvalidInstanceNotSupported
            case .invalidIpFormat:
                code = .invalidParameter_InvalidIpFormat
            case .invalidParameterCoexistImageIdsFilters:
                code = .invalidParameter_InvalidParameterCoexistImageIdsFilters
            case .invalidParameterUrlError:
                code = .invalidParameter_InvalidParameterUrlError
            case .lackCoreCountOrThreadPerCore:
                code = .invalidParameter_LackCoreCountOrThreadPerCore
            case .localDataDiskNotSupport:
                code = .invalidParameter_LocalDataDiskNotSupport
            case .parameterConflict:
                code = .invalidParameter_ParameterConflict
            case .passwordNotSupported:
                code = .invalidParameter_PasswordNotSupported
            case .snapshotNotFound:
                code = .invalidParameter_SnapshotNotFound
            case .specifyOneParameter:
                code = .invalidParameter_SpecifyOneParameter
            case .swapDiskNotSupport:
                code = .invalidParameter_SwapDiskNotSupport
            case .systemSnapshotNotFound:
                code = .invalidParameter_SystemSnapshotNotFound
            case .valueTooLarge:
                code = .invalidParameter_ValueTooLarge
            case .other:
                code = .invalidParameter
            }
            return TCCvmError(code, context: self.context)
        }
    }
}
