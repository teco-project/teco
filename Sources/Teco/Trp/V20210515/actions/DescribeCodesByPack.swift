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

extension Trp {
    /// DescribeCodesByPack请求参数结构体
    public struct DescribeCodesByPackRequest: TCRequestModel {
        /// 码包ID
        public let packId: String
        
        /// 企业ID
        public let corpId: UInt64?
        
        public init (packId: String, corpId: UInt64? = nil) {
            self.packId = packId
            self.corpId = corpId
        }
        
        enum CodingKeys: String, CodingKey {
            case packId = "PackId"
            case corpId = "CorpId"
        }
    }
    
    /// DescribeCodesByPack返回参数结构体
    public struct DescribeCodesByPackResponse: TCResponseModel {
        /// 码列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codes: [CodeItem]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case codes = "Codes"
            case requestId = "RequestId"
        }
    }
    
    /// 查询码包的二维码列表
    ///
    /// 查询码包的二维码列表，上限 3 万
    @inlinable
    public func describeCodesByPack(_ input: DescribeCodesByPackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCodesByPackResponse > {
        self.client.execute(action: "DescribeCodesByPack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询码包的二维码列表
    ///
    /// 查询码包的二维码列表，上限 3 万
    @inlinable
    public func describeCodesByPack(_ input: DescribeCodesByPackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodesByPackResponse {
        try await self.client.execute(action: "DescribeCodesByPack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
