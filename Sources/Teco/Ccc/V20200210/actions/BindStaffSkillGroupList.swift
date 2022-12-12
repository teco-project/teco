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
    /// BindStaffSkillGroupList请求参数结构体
    public struct BindStaffSkillGroupListRequest: TCRequestModel {
        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: Int64
        
        /// 坐席邮箱
        public let staffEmail: String
        
        /// 绑定技能组列表
        public let skillGroupList: [Int64]
        
        public init (sdkAppId: Int64, staffEmail: String, skillGroupList: [Int64]) {
            self.sdkAppId = sdkAppId
            self.staffEmail = staffEmail
            self.skillGroupList = skillGroupList
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case staffEmail = "StaffEmail"
            case skillGroupList = "SkillGroupList"
        }
    }
    
    /// BindStaffSkillGroupList返回参数结构体
    public struct BindStaffSkillGroupListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 绑定坐席所属技能组
    @inlinable
    public func bindStaffSkillGroupList(_ input: BindStaffSkillGroupListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BindStaffSkillGroupListResponse > {
        self.client.execute(action: "BindStaffSkillGroupList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 绑定坐席所属技能组
    @inlinable
    public func bindStaffSkillGroupList(_ input: BindStaffSkillGroupListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindStaffSkillGroupListResponse {
        try await self.client.execute(action: "BindStaffSkillGroupList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
