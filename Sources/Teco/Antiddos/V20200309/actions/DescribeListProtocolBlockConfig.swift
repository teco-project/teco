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

extension Antiddos {
    /// 获取DDoS防护的协议封禁配置列表
    @inlinable
    public func describeListProtocolBlockConfig(_ input: DescribeListProtocolBlockConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeListProtocolBlockConfigResponse > {
        self.client.execute(action: "DescribeListProtocolBlockConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取DDoS防护的协议封禁配置列表
    @inlinable
    public func describeListProtocolBlockConfig(_ input: DescribeListProtocolBlockConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListProtocolBlockConfigResponse {
        try await self.client.execute(action: "DescribeListProtocolBlockConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeListProtocolBlockConfig请求参数结构体
    public struct DescribeListProtocolBlockConfigRequest: TCRequestModel {
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: Int64
        
        /// 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        public let limit: Int64
        
        /// 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        public let filterInstanceId: String
        
        /// IP搜索
        public let filterIp: String?
        
        public init (offset: Int64, limit: Int64, filterInstanceId: String, filterIp: String?) {
            self.offset = offset
            self.limit = limit
            self.filterInstanceId = filterInstanceId
            self.filterIp = filterIp
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filterInstanceId = "FilterInstanceId"
            case filterIp = "FilterIp"
        }
    }
    
    /// DescribeListProtocolBlockConfig返回参数结构体
    public struct DescribeListProtocolBlockConfigResponse: TCResponseModel {
        /// 总数
        public let total: Int64
        
        /// 协议封禁配置
        public let configList: [ProtocolBlockRelation]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case configList = "ConfigList"
            case requestId = "RequestId"
        }
    }
}
