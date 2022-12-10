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

extension Ccc {
    /// 获取技能组信息列表
    ///
    /// 获取技能组信息列表
    @inlinable
    public func describeSkillGroupInfoList(_ input: DescribeSkillGroupInfoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSkillGroupInfoListResponse > {
        self.client.execute(action: "DescribeSkillGroupInfoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取技能组信息列表
    ///
    /// 获取技能组信息列表
    @inlinable
    public func describeSkillGroupInfoList(_ input: DescribeSkillGroupInfoListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSkillGroupInfoListResponse {
        try await self.client.execute(action: "DescribeSkillGroupInfoList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSkillGroupInfoList请求参数结构体
    public struct DescribeSkillGroupInfoListRequest: TCRequestModel {
        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: Int64
        
        /// 分页尺寸，上限 100
        public let pageSize: Int64
        
        /// 分页页码，从 0 开始
        public let pageNumber: Int64
        
        /// 技能组ID，查询单个技能组时使用
        public let skillGroupId: Int64?
        
        /// 查询修改时间大于等于ModifiedTime的技能组时使用
        public let modifiedTime: Int64?
        
        /// 技能组名称
        public let skillGroupName: String?
        
        public init (sdkAppId: Int64, pageSize: Int64, pageNumber: Int64, skillGroupId: Int64?, modifiedTime: Int64?, skillGroupName: String?) {
            self.sdkAppId = sdkAppId
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.skillGroupId = skillGroupId
            self.modifiedTime = modifiedTime
            self.skillGroupName = skillGroupName
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case skillGroupId = "SkillGroupId"
            case modifiedTime = "ModifiedTime"
            case skillGroupName = "SkillGroupName"
        }
    }
    
    /// DescribeSkillGroupInfoList返回参数结构体
    public struct DescribeSkillGroupInfoListResponse: TCResponseModel {
        /// 技能组总数
        public let totalCount: Int64
        
        /// 技能组信息列表
        public let skillGroupList: [SkillGroupInfoItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case skillGroupList = "SkillGroupList"
            case requestId = "RequestId"
        }
    }
}