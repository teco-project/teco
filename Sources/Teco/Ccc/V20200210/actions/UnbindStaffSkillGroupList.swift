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

import Logging
import NIOCore
import TecoCore

extension Ccc {
    /// UnbindStaffSkillGroupList请求参数结构体
    public struct UnbindStaffSkillGroupListRequest: TCRequest {
        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: Int64

        /// 客服邮箱
        public let staffEmail: String

        /// 解绑技能组列表
        public let skillGroupList: [Int64]

        public init(sdkAppId: Int64, staffEmail: String, skillGroupList: [Int64]) {
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

    /// UnbindStaffSkillGroupList返回参数结构体
    public struct UnbindStaffSkillGroupListResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑坐席所属技能组
    @inlinable @discardableResult
    public func unbindStaffSkillGroupList(_ input: UnbindStaffSkillGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindStaffSkillGroupListResponse> {
        self.client.execute(action: "UnbindStaffSkillGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑坐席所属技能组
    @inlinable @discardableResult
    public func unbindStaffSkillGroupList(_ input: UnbindStaffSkillGroupListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindStaffSkillGroupListResponse {
        try await self.client.execute(action: "UnbindStaffSkillGroupList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑坐席所属技能组
    @inlinable @discardableResult
    public func unbindStaffSkillGroupList(sdkAppId: Int64, staffEmail: String, skillGroupList: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindStaffSkillGroupListResponse> {
        self.unbindStaffSkillGroupList(.init(sdkAppId: sdkAppId, staffEmail: staffEmail, skillGroupList: skillGroupList), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑坐席所属技能组
    @inlinable @discardableResult
    public func unbindStaffSkillGroupList(sdkAppId: Int64, staffEmail: String, skillGroupList: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindStaffSkillGroupListResponse {
        try await self.unbindStaffSkillGroupList(.init(sdkAppId: sdkAppId, staffEmail: staffEmail, skillGroupList: skillGroupList), region: region, logger: logger, on: eventLoop)
    }
}
