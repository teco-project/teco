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
    /// ListAccountInAccountGroup请求参数结构体
    public struct ListAccountInAccountGroupRequest: TCRequestModel {
        /// 账号组ID。
        public let accountGroupId: String
        
        /// 查询条件，支持多搜索条件组合、多数据范围匹配的搜索。
        public let searchCondition: AccountGroupSearchCriteria?
        
        /// 偏移量，默认为 0。
        public let offset: Int64?
        
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?
        
        public init (accountGroupId: String, searchCondition: AccountGroupSearchCriteria? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.accountGroupId = accountGroupId
            self.searchCondition = searchCondition
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case accountGroupId = "AccountGroupId"
            case searchCondition = "SearchCondition"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// ListAccountInAccountGroup返回参数结构体
    public struct ListAccountInAccountGroupResponse: TCResponseModel {
        /// 查询返回的相关账号列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accountList: [AppAccountInfo]?
        
        /// 返回查询账号的总数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?
        
        /// 账号组ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accountGroupId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case accountList = "AccountList"
            case totalCount = "TotalCount"
            case accountGroupId = "AccountGroupId"
            case requestId = "RequestId"
        }
    }
    
    /// 获取账号组中的账号列表
    ///
    ///  获取账号组中的账号列表
    @inlinable
    public func listAccountInAccountGroup(_ input: ListAccountInAccountGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListAccountInAccountGroupResponse > {
        self.client.execute(action: "ListAccountInAccountGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取账号组中的账号列表
    ///
    ///  获取账号组中的账号列表
    @inlinable
    public func listAccountInAccountGroup(_ input: ListAccountInAccountGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAccountInAccountGroupResponse {
        try await self.client.execute(action: "ListAccountInAccountGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
