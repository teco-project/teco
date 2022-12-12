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

extension Cwp {
    /// DescribeAssetWebLocationInfo请求参数结构体
    public struct DescribeAssetWebLocationInfoRequest: TCRequestModel {
        /// 服务器Quuid
        public let quuid: String
        
        /// 服务器Uuid
        public let uuid: String
        
        /// 站点Id
        public let id: String
        
        public init (quuid: String, uuid: String, id: String) {
            self.quuid = quuid
            self.uuid = uuid
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case uuid = "Uuid"
            case id = "Id"
        }
    }
    
    /// DescribeAssetWebLocationInfo返回参数结构体
    public struct DescribeAssetWebLocationInfoResponse: TCResponseModel {
        /// 站点信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webLocation: AssetWebLocationInfo?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case webLocation = "WebLocation"
            case requestId = "RequestId"
        }
    }
    
    /// 获取Web站点详情
    @inlinable
    public func describeAssetWebLocationInfo(_ input: DescribeAssetWebLocationInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetWebLocationInfoResponse > {
        self.client.execute(action: "DescribeAssetWebLocationInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取Web站点详情
    @inlinable
    public func describeAssetWebLocationInfo(_ input: DescribeAssetWebLocationInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebLocationInfoResponse {
        try await self.client.execute(action: "DescribeAssetWebLocationInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
