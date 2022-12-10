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

extension Tcss {
    /// 查询容器安全未处理事件概览
    ///
    /// 查询容器安全未处理事件信息
    @inlinable
    public func describeContainerSecEventSummary(_ input: DescribeContainerSecEventSummaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeContainerSecEventSummaryResponse > {
        self.client.execute(action: "DescribeContainerSecEventSummary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询容器安全未处理事件概览
    ///
    /// 查询容器安全未处理事件信息
    @inlinable
    public func describeContainerSecEventSummary(_ input: DescribeContainerSecEventSummaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContainerSecEventSummaryResponse {
        try await self.client.execute(action: "DescribeContainerSecEventSummary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeContainerSecEventSummary请求参数结构体
    public struct DescribeContainerSecEventSummaryRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeContainerSecEventSummary返回参数结构体
    public struct DescribeContainerSecEventSummaryResponse: TCResponseModel {
        /// 未处理逃逸事件
        public let unhandledEscapeCnt: UInt64
        
        /// 未处理反弹shell事件
        public let unhandledReverseShellCnt: UInt64
        
        /// 未处理高危系统调用
        public let unhandledRiskSyscallCnt: UInt64
        
        /// 未处理异常进程
        public let unhandledAbnormalProcessCnt: UInt64
        
        /// 未处理文件篡改
        public let unhandledFileCnt: UInt64
        
        /// 未处理木马事件
        public let unhandledVirusEventCnt: UInt64
        
        /// 未处理恶意外连事件
        public let unhandledMaliciousConnectionEventCnt: UInt64
        
        /// 未处理k8sApi事件
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unhandledK8sApiEventCnt: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case unhandledEscapeCnt = "UnhandledEscapeCnt"
            case unhandledReverseShellCnt = "UnhandledReverseShellCnt"
            case unhandledRiskSyscallCnt = "UnhandledRiskSyscallCnt"
            case unhandledAbnormalProcessCnt = "UnhandledAbnormalProcessCnt"
            case unhandledFileCnt = "UnhandledFileCnt"
            case unhandledVirusEventCnt = "UnhandledVirusEventCnt"
            case unhandledMaliciousConnectionEventCnt = "UnhandledMaliciousConnectionEventCnt"
            case unhandledK8sApiEventCnt = "UnhandledK8sApiEventCnt"
            case requestId = "RequestId"
        }
    }
}
