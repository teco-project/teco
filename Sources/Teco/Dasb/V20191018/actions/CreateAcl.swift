//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date

extension Dasb {
    /// 新建访问权限
    ///
    /// 新建访问权限
    @inlinable
    public func createAcl(_ input: CreateAclRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAclResponse > {
        self.client.execute(action: "CreateAcl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 新建访问权限
    ///
    /// 新建访问权限
    @inlinable
    public func createAcl(_ input: CreateAclRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAclResponse {
        try await self.client.execute(action: "CreateAcl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateAcl请求参数结构体
    public struct CreateAclRequest: TCRequestModel {
        /// 权限名称，最大32字符，不能包含空白字符
        public let name: String
        
        /// 是否开启磁盘映射
        public let allowDiskRedirect: Bool
        
        /// 是否允许任意账号登录
        public let allowAnyAccount: Bool
        
        /// 是否开启剪贴板文件上行
        public let allowClipFileUp: Bool?
        
        /// 是否开启剪贴板文件下行
        public let allowClipFileDown: Bool?
        
        /// 是否开启剪贴板文本（含图片）上行
        public let allowClipTextUp: Bool?
        
        /// 是否开启剪贴板文本（含图片）下行
        public let allowClipTextDown: Bool?
        
        /// 是否开启 SFTP 文件上传
        public let allowFileUp: Bool?
        
        /// 文件传输上传大小限制（预留参数，目前暂未使用）
        public let maxFileUpSize: UInt64?
        
        /// 是否开启 SFTP 文件下载
        public let allowFileDown: Bool?
        
        /// 文件传输下载大小限制（预留参数，目前暂未使用）
        public let maxFileDownSize: UInt64?
        
        /// 关联的用户ID集合
        public let userIdSet: [UInt64]?
        
        /// 关联的用户组ID
        public let userGroupIdSet: [UInt64]?
        
        /// 关联的资产ID集合
        public let deviceIdSet: [UInt64]?
        
        /// 关联的资产组ID
        public let deviceGroupIdSet: [UInt64]?
        
        /// 关联的账号
        public let accountSet: [String]?
        
        /// 关联的高危命令模板ID
        public let cmdTemplateIdSet: [UInt64]?
        
        /// 是否开启rdp磁盘映射文件上传
        public let allowDiskFileUp: Bool?
        
        /// 是否开启rdp磁盘映射文件下载
        public let allowDiskFileDown: Bool?
        
        /// 是否开启rz sz文件上传
        public let allowShellFileUp: Bool?
        
        /// 是否开启rz sz文件下载
        public let allowShellFileDown: Bool?
        
        /// 是否开启 SFTP 文件删除
        public let allowFileDel: Bool?
        
        /// 访问权限生效时间，如:"2021-09-22T00:00:00+00:00"
        /// 生效、失效时间不填则访问权限长期有效
        public let validateFrom: Date?
        
        /// 访问权限失效时间，如:"2021-09-23T00:00:00+00:00"
        /// 生效、失效时间不填则访问权限长期有效
        public let validateTo: Date?
        
        /// 访问权限所属部门的ID
        public let departmentId: String?
        
        public init (name: String, allowDiskRedirect: Bool, allowAnyAccount: Bool, allowClipFileUp: Bool?, allowClipFileDown: Bool?, allowClipTextUp: Bool?, allowClipTextDown: Bool?, allowFileUp: Bool?, maxFileUpSize: UInt64?, allowFileDown: Bool?, maxFileDownSize: UInt64?, userIdSet: [UInt64]?, userGroupIdSet: [UInt64]?, deviceIdSet: [UInt64]?, deviceGroupIdSet: [UInt64]?, accountSet: [String]?, cmdTemplateIdSet: [UInt64]?, allowDiskFileUp: Bool?, allowDiskFileDown: Bool?, allowShellFileUp: Bool?, allowShellFileDown: Bool?, allowFileDel: Bool?, validateFrom: Date?, validateTo: Date?, departmentId: String?) {
            self.name = name
            self.allowDiskRedirect = allowDiskRedirect
            self.allowAnyAccount = allowAnyAccount
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
            self.validateFrom = validateFrom
            self.validateTo = validateTo
            self.departmentId = departmentId
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case allowDiskRedirect = "AllowDiskRedirect"
            case allowAnyAccount = "AllowAnyAccount"
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
    
    /// CreateAcl返回参数结构体
    public struct CreateAclResponse: TCResponseModel {
        /// 新建成功的访问权限ID
        public let id: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case requestId = "RequestId"
        }
    }
}