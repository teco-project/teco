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

extension Tbaas {
    /// GetBcosBlockList请求参数结构体
    public struct GetBcosBlockListRequest: TCRequestModel {
        /// 网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String
        
        /// 群组编号，可在群组列表中获取
        public let groupId: Int64
        
        /// 当前页数，默认为1
        public let pageNumber: Int64?
        
        /// 每页记录数，默认为10
        public let pageSize: Int64?
        
        /// 区块高度，可以从InvokeBcosTrans接口的返回值中解析获取
        public let blockNumber: Int64?
        
        /// 区块哈希，可以从InvokeBcosTrans接口的返回值中解析获取
        public let blockHash: String?
        
        public init (clusterId: String, groupId: Int64, pageNumber: Int64? = nil, pageSize: Int64? = nil, blockNumber: Int64? = nil, blockHash: String? = nil) {
            self.clusterId = clusterId
            self.groupId = groupId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.blockNumber = blockNumber
            self.blockHash = blockHash
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case blockNumber = "BlockNumber"
            case blockHash = "BlockHash"
        }
    }
    
    /// GetBcosBlockList返回参数结构体
    public struct GetBcosBlockListResponse: TCResponseModel {
        /// 总记录数
        public let totalCount: Int64
        
        /// 返回数据列表
        public let list: [BcosBlockObj]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }
    }
    
    /// 分页查询Bcos区块列表
    ///
    /// Bcos分页查询当前群组下的区块列表
    @inlinable
    public func getBcosBlockList(_ input: GetBcosBlockListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetBcosBlockListResponse > {
        self.client.execute(action: "GetBcosBlockList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 分页查询Bcos区块列表
    ///
    /// Bcos分页查询当前群组下的区块列表
    @inlinable
    public func getBcosBlockList(_ input: GetBcosBlockListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBcosBlockListResponse {
        try await self.client.execute(action: "GetBcosBlockList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
