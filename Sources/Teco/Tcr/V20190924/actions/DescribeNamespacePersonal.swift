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

extension Tcr {
    /// 查询个人版命名空间信息
    @inlinable
    public func describeNamespacePersonal(_ input: DescribeNamespacePersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNamespacePersonalResponse > {
        self.client.execute(action: "DescribeNamespacePersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询个人版命名空间信息
    @inlinable
    public func describeNamespacePersonal(_ input: DescribeNamespacePersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNamespacePersonalResponse {
        try await self.client.execute(action: "DescribeNamespacePersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeNamespacePersonal请求参数结构体
    public struct DescribeNamespacePersonalRequest: TCRequestModel {
        /// 命名空间，支持模糊查询
        public let namespace: String
        
        /// 单页数量
        public let limit: Int64
        
        /// 偏移量
        public let offset: Int64
        
        public init (namespace: String, limit: Int64, offset: Int64) {
            self.namespace = namespace
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case namespace = "Namespace"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeNamespacePersonal返回参数结构体
    public struct DescribeNamespacePersonalResponse: TCResponseModel {
        /// 用户命名空间返回信息
        public let data: NamespaceInfoResp
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
