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

extension Iotvideo {
    /// 获取数据转发列表
    ///
    /// 获取数据转发列表
    @inlinable
    public func describeDataForwardList(_ input: DescribeDataForwardListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDataForwardListResponse > {
        self.client.execute(action: "DescribeDataForwardList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取数据转发列表
    ///
    /// 获取数据转发列表
    @inlinable
    public func describeDataForwardList(_ input: DescribeDataForwardListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataForwardListResponse {
        try await self.client.execute(action: "DescribeDataForwardList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDataForwardList请求参数结构体
    public struct DescribeDataForwardListRequest: TCRequestModel {
        /// 产品ID列表
        public let productIds: String
        
        public init (productIds: String) {
            self.productIds = productIds
        }
        
        enum CodingKeys: String, CodingKey {
            case productIds = "ProductIds"
        }
    }
    
    /// DescribeDataForwardList返回参数结构体
    public struct DescribeDataForwardListResponse: TCResponseModel {
        /// 数据转发列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataForwardList: [DataForward]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dataForwardList = "DataForwardList"
            case requestId = "RequestId"
        }
    }
}