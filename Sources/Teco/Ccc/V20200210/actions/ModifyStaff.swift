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

extension Ccc {
    /// 修改客服账号
    @inlinable
    public func modifyStaff(_ input: ModifyStaffRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyStaffResponse > {
        self.client.execute(action: "ModifyStaff", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改客服账号
    @inlinable
    public func modifyStaff(_ input: ModifyStaffRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyStaffResponse {
        try await self.client.execute(action: "ModifyStaff", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyStaff请求参数结构体
    public struct ModifyStaffRequest: TCRequestModel {
        /// 应用ID
        public let sdkAppId: UInt64
        
        /// 坐席账户
        public let email: String
        
        /// 坐席名称
        public let name: String?
        
        /// 坐席手机号（带0086前缀,示例：008618011111111）
        public let phone: String?
        
        /// 坐席昵称
        public let nick: String?
        
        /// 绑定技能组ID列表
        public let skillGroupIds: [Int64]?
        
        /// 是否开启手机外呼开关
        public let useMobileCallOut: Bool?
        
        /// 手机接听模式 0 - 关闭 | 1 - 仅离线 | 2 - 始终
        public let useMobileAccept: Int64?
        
        public init (sdkAppId: UInt64, email: String, name: String?, phone: String?, nick: String?, skillGroupIds: [Int64]?, useMobileCallOut: Bool?, useMobileAccept: Int64?) {
            self.sdkAppId = sdkAppId
            self.email = email
            self.name = name
            self.phone = phone
            self.nick = nick
            self.skillGroupIds = skillGroupIds
            self.useMobileCallOut = useMobileCallOut
            self.useMobileAccept = useMobileAccept
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case email = "Email"
            case name = "Name"
            case phone = "Phone"
            case nick = "Nick"
            case skillGroupIds = "SkillGroupIds"
            case useMobileCallOut = "UseMobileCallOut"
            case useMobileAccept = "UseMobileAccept"
        }
    }
    
    /// ModifyStaff返回参数结构体
    public struct ModifyStaffResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
