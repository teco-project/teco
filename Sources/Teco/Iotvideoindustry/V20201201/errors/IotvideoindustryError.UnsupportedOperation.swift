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

extension TCIotvideoindustryError {
    public struct UnsupportedOperation: TCIotvideoindustryErrorType {
        enum Code: String {
            case bindExist = "UnsupportedOperation.BindExist"
            case deviceBindExist = "UnsupportedOperation.DeviceBindExist"
            case deviceCanNotDo = "UnsupportedOperation.DeviceCanNotDo"
            case deviceDupKeyExist = "UnsupportedOperation.DeviceDupKeyExist"
            case deviceMissMatch = "UnsupportedOperation.DeviceMissMatch"
            case deviceNotFound = "UnsupportedOperation.DeviceNotFound"
            case deviceSipCommandFail = "UnsupportedOperation.DeviceSipCommandFail"
            case domainGroup = "UnsupportedOperation.DomainGroup"
            case groupExist = "UnsupportedOperation.GroupExist"
            case groupLayerIsMax = "UnsupportedOperation.GroupLayerIsMax"
            case groupParentidNotExist = "UnsupportedOperation.GroupParentidNotExist"
            case liveChannelBindExist = "UnsupportedOperation.LiveChannelBindExist"
            case noPermission = "UnsupportedOperation.NoPermission"
            case planExistUnderTemplate = "UnsupportedOperation.PlanExistUnderTemplate"
            case recordPlanExist = "UnsupportedOperation.RecordPlanExist"
            case ruleDupKeyExist = "UnsupportedOperation.RuleDupKeyExist"
            case sceneExist = "UnsupportedOperation.SceneExist"
            case subGroupIsMax = "UnsupportedOperation.SubGroupIsMax"
            case subgrpExist = "UnsupportedOperation.SubgrpExist"
            case templateExist = "UnsupportedOperation.TemplateExist"
            case templatePreset = "UnsupportedOperation.TemplatePreset"
            case userIsIsolate = "UnsupportedOperation.UserIsIsolate"
            case other = "UnsupportedOperation"
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

        /// 分组下还存在设备或子分组。
        public static var bindExist: UnsupportedOperation {
            UnsupportedOperation(.bindExist)
        }

        /// 绑定的设备列表中有已绑定录制计划的设备。
        public static var deviceBindExist: UnsupportedOperation {
            UnsupportedOperation(.deviceBindExist)
        }

        /// 设备没有操作权限。
        public static var deviceCanNotDo: UnsupportedOperation {
            UnsupportedOperation(.deviceCanNotDo)
        }

        /// 存在重复设备。
        public static var deviceDupKeyExist: UnsupportedOperation {
            UnsupportedOperation(.deviceDupKeyExist)
        }

        /// 设备和通道不匹配，请检查。
        public static var deviceMissMatch: UnsupportedOperation {
            UnsupportedOperation(.deviceMissMatch)
        }

        /// 绑定的设备列表中有不存在的设备。
        public static var deviceNotFound: UnsupportedOperation {
            UnsupportedOperation(.deviceNotFound)
        }

        /// 设备信令不通。
        public static var deviceSipCommandFail: UnsupportedOperation {
            UnsupportedOperation(.deviceSipCommandFail)
        }

        /// 该分组为平台下级分组，不允许删除。
        public static var domainGroup: UnsupportedOperation {
            UnsupportedOperation(.domainGroup)
        }

        /// 该名字分组已创建，请修改其他分组名字。
        public static var groupExist: UnsupportedOperation {
            UnsupportedOperation(.groupExist)
        }

        /// 分组层级超过最大值。
        public static var groupLayerIsMax: UnsupportedOperation {
            UnsupportedOperation(.groupLayerIsMax)
        }

        /// 父分组不存在。
        public static var groupParentidNotExist: UnsupportedOperation {
            UnsupportedOperation(.groupParentidNotExist)
        }

        /// 存在直播频道与当前直播录制计划绑定。
        public static var liveChannelBindExist: UnsupportedOperation {
            UnsupportedOperation(.liveChannelBindExist)
        }

        /// 没有该设备的权限。
        public static var noPermission: UnsupportedOperation {
            UnsupportedOperation(.noPermission)
        }

        /// 时间模板下存在未删除的录制计划时不允许删除或修改。
        public static var planExistUnderTemplate: UnsupportedOperation {
            UnsupportedOperation(.planExistUnderTemplate)
        }

        /// 该名字录制计划已创建，请修改其他计划名字。
        public static var recordPlanExist: UnsupportedOperation {
            UnsupportedOperation(.recordPlanExist)
        }

        /// 存在重复规则。
        public static var ruleDupKeyExist: UnsupportedOperation {
            UnsupportedOperation(.ruleDupKeyExist)
        }

        /// 已存在同名场景。
        public static var sceneExist: UnsupportedOperation {
            UnsupportedOperation(.sceneExist)
        }

        /// 子分组数量超过最大值。
        public static var subGroupIsMax: UnsupportedOperation {
            UnsupportedOperation(.subGroupIsMax)
        }

        /// 分组下还存在设备或子分组。
        public static var subgrpExist: UnsupportedOperation {
            UnsupportedOperation(.subgrpExist)
        }

        /// 该名字时间模板已创建，请修改其他模板名字。
        public static var templateExist: UnsupportedOperation {
            UnsupportedOperation(.templateExist)
        }

        /// 预置时间模板不允许删除或修改。
        public static var templatePreset: UnsupportedOperation {
            UnsupportedOperation(.templatePreset)
        }

        /// 处于隔离中的资源不能进行此操作。
        public static var userIsIsolate: UnsupportedOperation {
            UnsupportedOperation(.userIsIsolate)
        }

        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asIotvideoindustryError() -> TCIotvideoindustryError {
            let code: TCIotvideoindustryError.Code
            switch self.error {
            case .bindExist:
                code = .unsupportedOperation_BindExist
            case .deviceBindExist:
                code = .unsupportedOperation_DeviceBindExist
            case .deviceCanNotDo:
                code = .unsupportedOperation_DeviceCanNotDo
            case .deviceDupKeyExist:
                code = .unsupportedOperation_DeviceDupKeyExist
            case .deviceMissMatch:
                code = .unsupportedOperation_DeviceMissMatch
            case .deviceNotFound:
                code = .unsupportedOperation_DeviceNotFound
            case .deviceSipCommandFail:
                code = .unsupportedOperation_DeviceSipCommandFail
            case .domainGroup:
                code = .unsupportedOperation_DomainGroup
            case .groupExist:
                code = .unsupportedOperation_GroupExist
            case .groupLayerIsMax:
                code = .unsupportedOperation_GroupLayerIsMax
            case .groupParentidNotExist:
                code = .unsupportedOperation_GroupParentidNotExist
            case .liveChannelBindExist:
                code = .unsupportedOperation_LiveChannelBindExist
            case .noPermission:
                code = .unsupportedOperation_NoPermission
            case .planExistUnderTemplate:
                code = .unsupportedOperation_PlanExistUnderTemplate
            case .recordPlanExist:
                code = .unsupportedOperation_RecordPlanExist
            case .ruleDupKeyExist:
                code = .unsupportedOperation_RuleDupKeyExist
            case .sceneExist:
                code = .unsupportedOperation_SceneExist
            case .subGroupIsMax:
                code = .unsupportedOperation_SubGroupIsMax
            case .subgrpExist:
                code = .unsupportedOperation_SubgrpExist
            case .templateExist:
                code = .unsupportedOperation_TemplateExist
            case .templatePreset:
                code = .unsupportedOperation_TemplatePreset
            case .userIsIsolate:
                code = .unsupportedOperation_UserIsIsolate
            case .other:
                code = .unsupportedOperation
            }
            return TCIotvideoindustryError(code, context: self.context)
        }
    }
}
