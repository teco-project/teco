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

extension Ccc {
    /// CreateCCCSkillGroup请求参数结构体
    public struct CreateCCCSkillGroupRequest: TCRequestModel {
        /// 应用 ID（必填）
        public let sdkAppId: Int64

        /// 技能组名称
        public let skillGroupName: String

        /// 技能组类型0-电话，1-在线，3-音频，4-视频
        public let skillGroupType: Int64

        /// 技能组接待人数上限（该技能组中1个座席可接待的人数上限）默认为1。1、若技能组类型为在线，则接待上限可设置为1及以上
        /// 2、若技能组类型为电话、音频、视频，则接待上线必须只能为1
        public let maxConcurrency: UInt64?

        public init(sdkAppId: Int64, skillGroupName: String, skillGroupType: Int64, maxConcurrency: UInt64? = nil) {
            self.sdkAppId = sdkAppId
            self.skillGroupName = skillGroupName
            self.skillGroupType = skillGroupType
            self.maxConcurrency = maxConcurrency
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case skillGroupName = "SkillGroupName"
            case skillGroupType = "SkillGroupType"
            case maxConcurrency = "MaxConcurrency"
        }
    }

    /// CreateCCCSkillGroup返回参数结构体
    public struct CreateCCCSkillGroupResponse: TCResponseModel {
        /// 技能组ID
        public let skillGroupId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case skillGroupId = "SkillGroupId"
            case requestId = "RequestId"
        }
    }

    /// 创建技能组
    @inlinable
    public func createCCCSkillGroup(_ input: CreateCCCSkillGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCCCSkillGroupResponse> {
        self.client.execute(action: "CreateCCCSkillGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建技能组
    @inlinable
    public func createCCCSkillGroup(_ input: CreateCCCSkillGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCCCSkillGroupResponse {
        try await self.client.execute(action: "CreateCCCSkillGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建技能组
    @inlinable
    public func createCCCSkillGroup(sdkAppId: Int64, skillGroupName: String, skillGroupType: Int64, maxConcurrency: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCCCSkillGroupResponse> {
        let input = CreateCCCSkillGroupRequest(sdkAppId: sdkAppId, skillGroupName: skillGroupName, skillGroupType: skillGroupType, maxConcurrency: maxConcurrency)
        return self.client.execute(action: "CreateCCCSkillGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建技能组
    @inlinable
    public func createCCCSkillGroup(sdkAppId: Int64, skillGroupName: String, skillGroupType: Int64, maxConcurrency: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCCCSkillGroupResponse {
        let input = CreateCCCSkillGroupRequest(sdkAppId: sdkAppId, skillGroupName: skillGroupName, skillGroupType: skillGroupType, maxConcurrency: maxConcurrency)
        return try await self.client.execute(action: "CreateCCCSkillGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
