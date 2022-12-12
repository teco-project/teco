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

extension Tke {
    /// ForwardApplicationRequestV3请求参数结构体
    public struct ForwardApplicationRequestV3Request: TCRequestModel {
        /// 请求集群addon的访问
        public let method: String
        
        /// 请求集群addon的路径
        public let path: String
        
        /// 请求集群addon后允许接收的数据格式
        public let accept: String?
        
        /// 请求集群addon的数据格式
        public let contentType: String?
        
        /// 请求集群addon的数据
        public let requestBody: String?
        
        /// 集群名称
        public let clusterName: String?
        
        /// 是否编码请求内容
        public let encodedBody: String?
        
        public init (method: String, path: String, accept: String? = nil, contentType: String? = nil, requestBody: String? = nil, clusterName: String? = nil, encodedBody: String? = nil) {
            self.method = method
            self.path = path
            self.accept = accept
            self.contentType = contentType
            self.requestBody = requestBody
            self.clusterName = clusterName
            self.encodedBody = encodedBody
        }
        
        enum CodingKeys: String, CodingKey {
            case method = "Method"
            case path = "Path"
            case accept = "Accept"
            case contentType = "ContentType"
            case requestBody = "RequestBody"
            case clusterName = "ClusterName"
            case encodedBody = "EncodedBody"
        }
    }
    
    /// ForwardApplicationRequestV3返回参数结构体
    public struct ForwardApplicationRequestV3Response: TCResponseModel {
        /// 请求集群addon后返回的数据
        public let responseBody: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case responseBody = "ResponseBody"
            case requestId = "RequestId"
        }
    }
    
    /// 操作TKE集群的addon
    @inlinable
    public func forwardApplicationRequestV3(_ input: ForwardApplicationRequestV3Request, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ForwardApplicationRequestV3Response > {
        self.client.execute(action: "ForwardApplicationRequestV3", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 操作TKE集群的addon
    @inlinable
    public func forwardApplicationRequestV3(_ input: ForwardApplicationRequestV3Request, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ForwardApplicationRequestV3Response {
        try await self.client.execute(action: "ForwardApplicationRequestV3", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
