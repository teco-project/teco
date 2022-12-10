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

extension Iotvideo {
    /// 获取某一产品发布过的全部固件版本
    ///
    /// 本接口（DescribePubVersions）用于获取某一产品发布过的全部固件版本。
    @inlinable
    public func describePubVersions(_ input: DescribePubVersionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribePubVersionsResponse > {
        self.client.execute(action: "DescribePubVersions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取某一产品发布过的全部固件版本
    ///
    /// 本接口（DescribePubVersions）用于获取某一产品发布过的全部固件版本。
    @inlinable
    public func describePubVersions(_ input: DescribePubVersionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePubVersionsResponse {
        try await self.client.execute(action: "DescribePubVersions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribePubVersions请求参数结构体
    public struct DescribePubVersionsRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        public init (productId: String) {
            self.productId = productId
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }
    
    /// DescribePubVersions返回参数结构体
    public struct DescribePubVersionsResponse: TCResponseModel {
        /// 历史发布的版本列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [OtaPubHistory]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
