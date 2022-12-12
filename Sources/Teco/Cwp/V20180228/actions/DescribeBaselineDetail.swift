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
    /// DescribeBaselineDetail请求参数结构体
    public struct DescribeBaselineDetailRequest: TCRequestModel {
        /// 基线id
        public let baselineId: UInt64
        
        public init (baselineId: UInt64) {
            self.baselineId = baselineId
        }
        
        enum CodingKeys: String, CodingKey {
            case baselineId = "BaselineId"
        }
    }
    
    /// DescribeBaselineDetail返回参数结构体
    public struct DescribeBaselineDetailResponse: TCResponseModel {
        /// 基线详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let baselineDetail: BaselineDetail?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case baselineDetail = "BaselineDetail"
            case requestId = "RequestId"
        }
    }
    
    /// 查询基线详情
    ///
    /// 根据基线id查询基线详情接口
    @inlinable
    public func describeBaselineDetail(_ input: DescribeBaselineDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBaselineDetailResponse > {
        self.client.execute(action: "DescribeBaselineDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询基线详情
    ///
    /// 根据基线id查询基线详情接口
    @inlinable
    public func describeBaselineDetail(_ input: DescribeBaselineDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineDetailResponse {
        try await self.client.execute(action: "DescribeBaselineDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
