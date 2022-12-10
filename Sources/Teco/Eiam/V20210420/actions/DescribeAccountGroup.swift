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

extension Eiam {
    /// 查询账号组列表
    @inlinable
    public func describeAccountGroup(_ input: DescribeAccountGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccountGroupResponse > {
        self.client.execute(action: "DescribeAccountGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询账号组列表
    @inlinable
    public func describeAccountGroup(_ input: DescribeAccountGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountGroupResponse {
        try await self.client.execute(action: "DescribeAccountGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAccountGroup请求参数结构体
    public struct DescribeAccountGroupRequest: TCRequestModel {
        /// 应用ID。
        public let applicationId: String
        
        /// 查询条件，支持多搜索条件组合、多数据范围匹配的搜索。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（“”）表示全匹配、以星号（*）结尾表示字段部分匹配。如果该字段为空，则默认查全量表。
        public let searchCondition: AccountGroupSearchCriteria
        
        /// 偏移量，默认为 0。
        public let offset: Int64?
        
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?
        
        public init (applicationId: String, searchCondition: AccountGroupSearchCriteria, offset: Int64?, limit: Int64?) {
            self.applicationId = applicationId
            self.searchCondition = searchCondition
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case searchCondition = "SearchCondition"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeAccountGroup返回参数结构体
    public struct DescribeAccountGroupResponse: TCResponseModel {
        /// 返回查询的总记录数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?
        
        /// 应用ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationId: String?
        
        /// 返回符合条件的数据列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accountGroupList: [AccountGroupInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case applicationId = "ApplicationId"
            case accountGroupList = "AccountGroupList"
            case requestId = "RequestId"
        }
    }
}
