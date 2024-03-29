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

import TecoCore

extension TCCbsError {
    public struct InvalidParameter: TCCbsErrorType {
        enum Code: String {
            case diskConfigNotSupported = "InvalidParameter.DiskConfigNotSupported"
            case diskSizeNotMatch = "InvalidParameter.DiskSizeNotMatch"
            case projectIdNotExist = "InvalidParameter.ProjectIdNotExist"
            case shouldConvertSnapshotToImage = "InvalidParameter.ShouldConvertSnapshotToImage"
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

        /// 当前地域不支持当前配置的云盘。
        public static var diskConfigNotSupported: InvalidParameter {
            InvalidParameter(.diskConfigNotSupported)
        }

        /// 云硬盘大小与快照大小不匹配。
        public static var diskSizeNotMatch: InvalidParameter {
            InvalidParameter(.diskSizeNotMatch)
        }

        /// 项目ID不存在。
        public static var projectIdNotExist: InvalidParameter {
            InvalidParameter(.projectIdNotExist)
        }

        /// 需要将快照转化成镜像后再执行操作。
        public static var shouldConvertSnapshotToImage: InvalidParameter {
            InvalidParameter(.shouldConvertSnapshotToImage)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asCbsError() -> TCCbsError {
            let code: TCCbsError.Code
            switch self.error {
            case .diskConfigNotSupported:
                code = .invalidParameter_DiskConfigNotSupported
            case .diskSizeNotMatch:
                code = .invalidParameter_DiskSizeNotMatch
            case .projectIdNotExist:
                code = .invalidParameter_ProjectIdNotExist
            case .shouldConvertSnapshotToImage:
                code = .invalidParameter_ShouldConvertSnapshotToImage
            case .other:
                code = .invalidParameter
            }
            return TCCbsError(code, context: self.context)
        }
    }
}
