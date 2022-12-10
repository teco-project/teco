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

extension Yunjing {
    /// 获取进程列表
    ///
    /// 本接口 (DescribeProcesses) 用于获取进程列表数据。
    @inlinable
    public func describeProcesses(_ input: DescribeProcessesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProcessesResponse > {
        self.client.execute(action: "DescribeProcesses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取进程列表
    ///
    /// 本接口 (DescribeProcesses) 用于获取进程列表数据。
    @inlinable
    public func describeProcesses(_ input: DescribeProcessesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProcessesResponse {
        try await self.client.execute(action: "DescribeProcesses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeProcesses请求参数结构体
    public struct DescribeProcessesRequest: TCRequestModel {
        /// 云镜客户端唯一Uuid。Uuid和ProcessName必填其一，使用Uuid表示，查询该主机列表信息。
        public let uuid: String?
        
        /// 进程名。Uuid和ProcessName必填其一，使用ProcessName表示，查询该进程列表信息。
        public let processName: String?
        
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤条件。
        /// <li>ProcessName - String - 是否必填：否 - 进程名</li>
        /// <li>MachineIp - String - 是否必填：否 - 主机内网IP</li>
        public let filters: [Filter]?
        
        public init (uuid: String?, processName: String?, limit: UInt64?, offset: UInt64?, filters: [Filter]?) {
            self.uuid = uuid
            self.processName = processName
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case processName = "ProcessName"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }
    
    /// DescribeProcesses返回参数结构体
    public struct DescribeProcessesResponse: TCResponseModel {
        /// 进程列表记录总数。
        public let totalCount: UInt64
        
        /// 进程列表数据数组。
        public let processes: [Process]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case processes = "Processes"
            case requestId = "RequestId"
        }
    }
}
