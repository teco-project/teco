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

extension TCIotvideoindustryError {
    public struct ResourceNotFound: TCIotvideoindustryErrorType {
        enum Code: String {
            case deviceNotExist = "ResourceNotFound.DeviceNotExist"
            case deviceSipPTZError = "ResourceNotFound.DeviceSipPTZError"
            case groupNotExist = "ResourceNotFound.GroupNotExist"
            case planNotExist = "ResourceNotFound.PlanNotExist"
            case resourceNotFound = "ResourceNotFound.ResourceNotFound"
            case statDataNotExist = "ResourceNotFound.StatDataNotExist"
            case templateNotExist = "ResourceNotFound.TemplateNotExist"
            case other = "ResourceNotFound"
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

        /// 设备未创建或是已删除。
        public static var deviceNotExist: ResourceNotFound {
            ResourceNotFound(.deviceNotExist)
        }

        /// PTZ控制的资源处于离线状态。
        public static var deviceSipPTZError: ResourceNotFound {
            ResourceNotFound(.deviceSipPTZError)
        }

        /// 未找到分组或分组已删除。
        public static var groupNotExist: ResourceNotFound {
            ResourceNotFound(.groupNotExist)
        }

        /// 未找到录制计划或录制计划已删除。
        public static var planNotExist: ResourceNotFound {
            ResourceNotFound(.planNotExist)
        }

        /// 未找到时间模板或时间模板已删除。
        public static var resourceNotFound: ResourceNotFound {
            ResourceNotFound(.resourceNotFound)
        }

        /// 统计数据不存在。
        public static var statDataNotExist: ResourceNotFound {
            ResourceNotFound(.statDataNotExist)
        }

        /// 未找到时间模板或时间模板已删除。
        public static var templateNotExist: ResourceNotFound {
            ResourceNotFound(.templateNotExist)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asIotvideoindustryError() -> TCIotvideoindustryError {
            let code: TCIotvideoindustryError.Code
            switch self.error {
            case .deviceNotExist:
                code = .resourceNotFound_DeviceNotExist
            case .deviceSipPTZError:
                code = .resourceNotFound_DeviceSipPTZError
            case .groupNotExist:
                code = .resourceNotFound_GroupNotExist
            case .planNotExist:
                code = .resourceNotFound_PlanNotExist
            case .resourceNotFound:
                code = .resourceNotFound_ResourceNotFound
            case .statDataNotExist:
                code = .resourceNotFound_StatDataNotExist
            case .templateNotExist:
                code = .resourceNotFound_TemplateNotExist
            case .other:
                code = .resourceNotFound
            }
            return TCIotvideoindustryError(code, context: self.context)
        }
    }
}
