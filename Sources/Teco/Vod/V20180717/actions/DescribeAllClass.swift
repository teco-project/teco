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

extension Vod {
    /// DescribeAllClass请求参数结构体
    public struct DescribeAllClassRequest: TCRequestModel {
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?
        
        public init (subAppId: UInt64? = nil) {
            self.subAppId = subAppId
        }
        
        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
        }
    }
    
    /// DescribeAllClass返回参数结构体
    public struct DescribeAllClassResponse: TCResponseModel {
        /// 分类信息集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let classInfoSet: [MediaClassInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case classInfoSet = "ClassInfoSet"
            case requestId = "RequestId"
        }
    }
    
    /// 获取所有分类
    ///
    /// * 获得用户的所有分类信息。
    @inlinable
    public func describeAllClass(_ input: DescribeAllClassRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAllClassResponse > {
        self.client.execute(action: "DescribeAllClass", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取所有分类
    ///
    /// * 获得用户的所有分类信息。
    @inlinable
    public func describeAllClass(_ input: DescribeAllClassRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllClassResponse {
        try await self.client.execute(action: "DescribeAllClass", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
