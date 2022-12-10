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

extension Trp {
    /// 查询码包地址
    ///
    /// 查询码包地址
    @inlinable
    public func describeCodePackUrl(_ input: DescribeCodePackUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCodePackUrlResponse > {
        self.client.execute(action: "DescribeCodePackUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询码包地址
    ///
    /// 查询码包地址
    @inlinable
    public func describeCodePackUrl(_ input: DescribeCodePackUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCodePackUrlResponse {
        try await self.client.execute(action: "DescribeCodePackUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCodePackUrl请求参数结构体
    public struct DescribeCodePackUrlRequest: TCRequestModel {
        /// 码包ID
        public let packId: String
        
        /// 企业ID
        public let corpId: UInt64?
        
        public init (packId: String, corpId: UInt64?) {
            self.packId = packId
            self.corpId = corpId
        }
        
        enum CodingKeys: String, CodingKey {
            case packId = "PackId"
            case corpId = "CorpId"
        }
    }
    
    /// DescribeCodePackUrl返回参数结构体
    public struct DescribeCodePackUrlResponse: TCResponseModel {
        /// 文字码包地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let url: String?
        
        /// 图片码包地址，可能为空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imgUrl: String?
        
        /// 文字码包Key，用于上传导入
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileKey: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case imgUrl = "ImgUrl"
            case fileKey = "FileKey"
            case requestId = "RequestId"
        }
    }
}