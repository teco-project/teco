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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Dasb {
    /// ModifyAcl请求参数结构体
    public struct ModifyAclRequest: TCRequestModel {
        /// 访问权限名称，最大32字符，不能包含空白字符
        public let name: String

        /// 是否开启磁盘映射
        public let allowDiskRedirect: Bool

        /// 是否允许任意账号登录
        public let allowAnyAccount: Bool

        /// 访问权限ID
        public let id: UInt64

        /// 是否开启剪贴板文件上行
        public let allowClipFileUp: Bool?

        /// 是否开启剪贴板文件下行
        public let allowClipFileDown: Bool?

        /// 是否开启剪贴板文本（含图片）上行
        public let allowClipTextUp: Bool?

        /// 是否开启剪贴板文本（含图片）下行
        public let allowClipTextDown: Bool?

        /// 是否开启文件传输上传
        public let allowFileUp: Bool?

        /// 文件传输上传大小限制（预留参数，目前暂未使用）
        public let maxFileUpSize: UInt64?

        /// 是否开启文件传输下载
        public let allowFileDown: Bool?

        /// 文件传输下载大小限制（预留参数，目前暂未使用）
        public let maxFileDownSize: UInt64?

        /// 关联的用户ID
        public let userIdSet: [UInt64]?

        /// 关联的用户组ID
        public let userGroupIdSet: [UInt64]?

        /// 关联的资产ID
        public let deviceIdSet: [UInt64]?

        /// 关联的资产组ID
        public let deviceGroupIdSet: [UInt64]?

        /// 关联的账号
        public let accountSet: [String]?

        /// 关联的高危命令模板ID
        public let cmdTemplateIdSet: [UInt64]?

        /// 是否开启 RDP 磁盘映射文件上传
        public let allowDiskFileUp: Bool?

        /// 是否开启 RDP 磁盘映射文件下载
        public let allowDiskFileDown: Bool?

        /// 是否开启rz sz文件上传
        public let allowShellFileUp: Bool?

        /// 是否开启rz sz文件下载
        public let allowShellFileDown: Bool?

        /// 是否开启 SFTP 文件删除
        public let allowFileDel: Bool?

        /// 访问权限生效时间，如:"2021-09-22T00:00:00+00:00"
        /// 生效、失效时间不填则访问权限长期有效
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var validateFrom: Date?

        /// 访问权限失效时间，如:"2021-09-23T00:00:00+00:00"
        /// 生效、失效时间不填则访问权限长期有效
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var validateTo: Date?

        /// 权限所属部门的ID，如：1.2.3
        public let departmentId: String?

        public init(name: String, allowDiskRedirect: Bool, allowAnyAccount: Bool, id: UInt64, allowClipFileUp: Bool? = nil, allowClipFileDown: Bool? = nil, allowClipTextUp: Bool? = nil, allowClipTextDown: Bool? = nil, allowFileUp: Bool? = nil, maxFileUpSize: UInt64? = nil, allowFileDown: Bool? = nil, maxFileDownSize: UInt64? = nil, userIdSet: [UInt64]? = nil, userGroupIdSet: [UInt64]? = nil, deviceIdSet: [UInt64]? = nil, deviceGroupIdSet: [UInt64]? = nil, accountSet: [String]? = nil, cmdTemplateIdSet: [UInt64]? = nil, allowDiskFileUp: Bool? = nil, allowDiskFileDown: Bool? = nil, allowShellFileUp: Bool? = nil, allowShellFileDown: Bool? = nil, allowFileDel: Bool? = nil, validateFrom: Date? = nil, validateTo: Date? = nil, departmentId: String? = nil) {
            self.name = name
            self.allowDiskRedirect = allowDiskRedirect
            self.allowAnyAccount = allowAnyAccount
            self.id = id
            self.allowClipFileUp = allowClipFileUp
            self.allowClipFileDown = allowClipFileDown
            self.allowClipTextUp = allowClipTextUp
            self.allowClipTextDown = allowClipTextDown
            self.allowFileUp = allowFileUp
            self.maxFileUpSize = maxFileUpSize
            self.allowFileDown = allowFileDown
            self.maxFileDownSize = maxFileDownSize
            self.userIdSet = userIdSet
            self.userGroupIdSet = userGroupIdSet
            self.deviceIdSet = deviceIdSet
            self.deviceGroupIdSet = deviceGroupIdSet
            self.accountSet = accountSet
            self.cmdTemplateIdSet = cmdTemplateIdSet
            self.allowDiskFileUp = allowDiskFileUp
            self.allowDiskFileDown = allowDiskFileDown
            self.allowShellFileUp = allowShellFileUp
            self.allowShellFileDown = allowShellFileDown
            self.allowFileDel = allowFileDel
            self._validateFrom = .init(wrappedValue: validateFrom)
            self._validateTo = .init(wrappedValue: validateTo)
            self.departmentId = departmentId
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case allowDiskRedirect = "AllowDiskRedirect"
            case allowAnyAccount = "AllowAnyAccount"
            case id = "Id"
            case allowClipFileUp = "AllowClipFileUp"
            case allowClipFileDown = "AllowClipFileDown"
            case allowClipTextUp = "AllowClipTextUp"
            case allowClipTextDown = "AllowClipTextDown"
            case allowFileUp = "AllowFileUp"
            case maxFileUpSize = "MaxFileUpSize"
            case allowFileDown = "AllowFileDown"
            case maxFileDownSize = "MaxFileDownSize"
            case userIdSet = "UserIdSet"
            case userGroupIdSet = "UserGroupIdSet"
            case deviceIdSet = "DeviceIdSet"
            case deviceGroupIdSet = "DeviceGroupIdSet"
            case accountSet = "AccountSet"
            case cmdTemplateIdSet = "CmdTemplateIdSet"
            case allowDiskFileUp = "AllowDiskFileUp"
            case allowDiskFileDown = "AllowDiskFileDown"
            case allowShellFileUp = "AllowShellFileUp"
            case allowShellFileDown = "AllowShellFileDown"
            case allowFileDel = "AllowFileDel"
            case validateFrom = "ValidateFrom"
            case validateTo = "ValidateTo"
            case departmentId = "DepartmentId"
        }
    }

    /// ModifyAcl返回参数结构体
    public struct ModifyAclResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改访问权限
    @inlinable
    public func modifyAcl(_ input: ModifyAclRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAclResponse> {
        self.client.execute(action: "ModifyAcl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改访问权限
    @inlinable
    public func modifyAcl(_ input: ModifyAclRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAclResponse {
        try await self.client.execute(action: "ModifyAcl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改访问权限
    @inlinable
    public func modifyAcl(name: String, allowDiskRedirect: Bool, allowAnyAccount: Bool, id: UInt64, allowClipFileUp: Bool? = nil, allowClipFileDown: Bool? = nil, allowClipTextUp: Bool? = nil, allowClipTextDown: Bool? = nil, allowFileUp: Bool? = nil, maxFileUpSize: UInt64? = nil, allowFileDown: Bool? = nil, maxFileDownSize: UInt64? = nil, userIdSet: [UInt64]? = nil, userGroupIdSet: [UInt64]? = nil, deviceIdSet: [UInt64]? = nil, deviceGroupIdSet: [UInt64]? = nil, accountSet: [String]? = nil, cmdTemplateIdSet: [UInt64]? = nil, allowDiskFileUp: Bool? = nil, allowDiskFileDown: Bool? = nil, allowShellFileUp: Bool? = nil, allowShellFileDown: Bool? = nil, allowFileDel: Bool? = nil, validateFrom: Date? = nil, validateTo: Date? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAclResponse> {
        self.modifyAcl(ModifyAclRequest(name: name, allowDiskRedirect: allowDiskRedirect, allowAnyAccount: allowAnyAccount, id: id, allowClipFileUp: allowClipFileUp, allowClipFileDown: allowClipFileDown, allowClipTextUp: allowClipTextUp, allowClipTextDown: allowClipTextDown, allowFileUp: allowFileUp, maxFileUpSize: maxFileUpSize, allowFileDown: allowFileDown, maxFileDownSize: maxFileDownSize, userIdSet: userIdSet, userGroupIdSet: userGroupIdSet, deviceIdSet: deviceIdSet, deviceGroupIdSet: deviceGroupIdSet, accountSet: accountSet, cmdTemplateIdSet: cmdTemplateIdSet, allowDiskFileUp: allowDiskFileUp, allowDiskFileDown: allowDiskFileDown, allowShellFileUp: allowShellFileUp, allowShellFileDown: allowShellFileDown, allowFileDel: allowFileDel, validateFrom: validateFrom, validateTo: validateTo, departmentId: departmentId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改访问权限
    @inlinable
    public func modifyAcl(name: String, allowDiskRedirect: Bool, allowAnyAccount: Bool, id: UInt64, allowClipFileUp: Bool? = nil, allowClipFileDown: Bool? = nil, allowClipTextUp: Bool? = nil, allowClipTextDown: Bool? = nil, allowFileUp: Bool? = nil, maxFileUpSize: UInt64? = nil, allowFileDown: Bool? = nil, maxFileDownSize: UInt64? = nil, userIdSet: [UInt64]? = nil, userGroupIdSet: [UInt64]? = nil, deviceIdSet: [UInt64]? = nil, deviceGroupIdSet: [UInt64]? = nil, accountSet: [String]? = nil, cmdTemplateIdSet: [UInt64]? = nil, allowDiskFileUp: Bool? = nil, allowDiskFileDown: Bool? = nil, allowShellFileUp: Bool? = nil, allowShellFileDown: Bool? = nil, allowFileDel: Bool? = nil, validateFrom: Date? = nil, validateTo: Date? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAclResponse {
        try await self.modifyAcl(ModifyAclRequest(name: name, allowDiskRedirect: allowDiskRedirect, allowAnyAccount: allowAnyAccount, id: id, allowClipFileUp: allowClipFileUp, allowClipFileDown: allowClipFileDown, allowClipTextUp: allowClipTextUp, allowClipTextDown: allowClipTextDown, allowFileUp: allowFileUp, maxFileUpSize: maxFileUpSize, allowFileDown: allowFileDown, maxFileDownSize: maxFileDownSize, userIdSet: userIdSet, userGroupIdSet: userGroupIdSet, deviceIdSet: deviceIdSet, deviceGroupIdSet: deviceGroupIdSet, accountSet: accountSet, cmdTemplateIdSet: cmdTemplateIdSet, allowDiskFileUp: allowDiskFileUp, allowDiskFileDown: allowDiskFileDown, allowShellFileUp: allowShellFileUp, allowShellFileDown: allowShellFileDown, allowFileDel: allowFileDel, validateFrom: validateFrom, validateTo: validateTo, departmentId: departmentId), region: region, logger: logger, on: eventLoop)
    }
}
