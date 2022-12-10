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

extension Cloudhsm {
    /// 查询私有网络列表
    ///
    /// 查询用户的私有网络列表
    @inlinable
    public func describeVpc(_ input: DescribeVpcRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVpcResponse > {
        self.client.execute(action: "DescribeVpc", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询私有网络列表
    ///
    /// 查询用户的私有网络列表
    @inlinable
    public func describeVpc(_ input: DescribeVpcRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcResponse {
        try await self.client.execute(action: "DescribeVpc", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeVpc请求参数结构体
    public struct DescribeVpcRequest: TCRequestModel {
        /// 返回偏移量。Offset最小为0。
        public let offset: Int64
        
        /// 返回数量。Limit需要在[1, 100]之间。
        public let limit: Int64
        
        /// 搜索关键字
        public let searchWord: String?
        
        public init (offset: Int64, limit: Int64, searchWord: String?) {
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
        }
    }
    
    /// DescribeVpc返回参数结构体
    public struct DescribeVpcResponse: TCResponseModel {
        /// 可查询到的所有Vpc实例总数。
        public let totalCount: Int64
        
        /// Vpc对象列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcList: [Vpc]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case vpcList = "VpcList"
            case requestId = "RequestId"
        }
    }
}