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

extension Yunjing {
    /// 获取端口列表
    ///
    /// 本接口 (DescribeOpenPorts) 用于获取端口列表数据。
    @inlinable
    public func describeOpenPorts(_ input: DescribeOpenPortsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOpenPortsResponse > {
        self.client.execute(action: "DescribeOpenPorts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取端口列表
    ///
    /// 本接口 (DescribeOpenPorts) 用于获取端口列表数据。
    @inlinable
    public func describeOpenPorts(_ input: DescribeOpenPortsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOpenPortsResponse {
        try await self.client.execute(action: "DescribeOpenPorts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeOpenPorts请求参数结构体
    public struct DescribeOpenPortsRequest: TCRequestModel {
        /// 云镜客户端唯一Uuid。Port和Uuid必填其一，使用Uuid表示，查询该主机列表信息。
        public let uuid: String?
        
        /// 开放端口号。Port和Uuid必填其一，使用Port表示查询该端口的列表信息。
        public let port: UInt64?
        
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤条件。
        /// <li>Port - Uint64 - 是否必填：否 - 端口号</li>
        /// <li>ProcessName - String - 是否必填：否 - 进程名</li>
        /// <li>MachineIp - String - 是否必填：否 - 主机内网IP</li>
        public let filters: [Filter]?
        
        public init (uuid: String?, port: UInt64?, limit: UInt64?, offset: UInt64?, filters: [Filter]?) {
            self.uuid = uuid
            self.port = port
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case port = "Port"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }
    
    /// DescribeOpenPorts返回参数结构体
    public struct DescribeOpenPortsResponse: TCResponseModel {
        /// 端口列表记录总数。
        public let totalCount: UInt64
        
        /// 端口列表。
        public let openPorts: [OpenPort]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case openPorts = "OpenPorts"
            case requestId = "RequestId"
        }
    }
}