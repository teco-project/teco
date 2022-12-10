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

extension Sslpod {
    /// 仪表盘数据
    ///
    /// 获取仪表盘数据
    @inlinable
    public func describeDashboard(_ input: DescribeDashboardRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDashboardResponse > {
        self.client.execute(action: "DescribeDashboard", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 仪表盘数据
    ///
    /// 获取仪表盘数据
    @inlinable
    public func describeDashboard(_ input: DescribeDashboardRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDashboardResponse {
        try await self.client.execute(action: "DescribeDashboard", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDashboard请求参数结构体
    public struct DescribeDashboardRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeDashboard返回参数结构体
    public struct DescribeDashboardResponse: TCResponseModel {
        /// dashboard面板数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DashboardResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}