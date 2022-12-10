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

extension Ccc {
    /// 查询在线客服记录
    ///
    /// 包括全媒体和文本两种类型
    @inlinable
    public func describeIMCdrs(_ input: DescribeIMCdrsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeIMCdrsResponse > {
        self.client.execute(action: "DescribeIMCdrs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询在线客服记录
    ///
    /// 包括全媒体和文本两种类型
    @inlinable
    public func describeIMCdrs(_ input: DescribeIMCdrsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIMCdrsResponse {
        try await self.client.execute(action: "DescribeIMCdrs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeIMCdrs请求参数结构体
    public struct DescribeIMCdrsRequest: TCRequestModel {
        /// 起始时间
        public let startTimestamp: Int64
        
        /// 结束时间
        public let endTimestamp: Int64
        
        /// 实例 ID（废弃）
        public let instanceId: Int64?
        
        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: Int64?
        
        /// 返回记录条数 最大为100默认20
        public let limit: Int64?
        
        /// 返回记录偏移 默认为0
        public let offset: Int64?
        
        /// 1为全媒体，2为文本客服，不填则查询全部
        public let type: Int64?
        
        public init (startTimestamp: Int64, endTimestamp: Int64, instanceId: Int64?, sdkAppId: Int64?, limit: Int64?, offset: Int64?, type: Int64?) {
            self.startTimestamp = startTimestamp
            self.endTimestamp = endTimestamp
            self.instanceId = instanceId
            self.sdkAppId = sdkAppId
            self.limit = limit
            self.offset = offset
            self.type = type
        }
        
        enum CodingKeys: String, CodingKey {
            case startTimestamp = "StartTimestamp"
            case endTimestamp = "EndTimestamp"
            case instanceId = "InstanceId"
            case sdkAppId = "SdkAppId"
            case limit = "Limit"
            case offset = "Offset"
            case type = "Type"
        }
    }
    
    /// DescribeIMCdrs返回参数结构体
    public struct DescribeIMCdrsResponse: TCResponseModel {
        /// 总记录数
        public let totalCount: Int64
        
        /// 服务记录列表
        public let imCdrs: [IMCdrInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case imCdrs = "IMCdrs"
            case requestId = "RequestId"
        }
    }
}