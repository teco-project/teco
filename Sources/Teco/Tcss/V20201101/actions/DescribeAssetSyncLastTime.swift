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

extension Tcss {
    /// 查询资产同步最近时间
    ///
    /// 查询资产同步最近时间
    @inlinable
    public func describeAssetSyncLastTime(_ input: DescribeAssetSyncLastTimeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetSyncLastTimeResponse > {
        self.client.execute(action: "DescribeAssetSyncLastTime", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询资产同步最近时间
    ///
    /// 查询资产同步最近时间
    @inlinable
    public func describeAssetSyncLastTime(_ input: DescribeAssetSyncLastTimeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetSyncLastTimeResponse {
        try await self.client.execute(action: "DescribeAssetSyncLastTime", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAssetSyncLastTime请求参数结构体
    public struct DescribeAssetSyncLastTimeRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeAssetSyncLastTime返回参数结构体
    public struct DescribeAssetSyncLastTimeResponse: TCResponseModel {
        /// 资产最近同步时间
        public let assetSyncLastTime: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case assetSyncLastTime = "AssetSyncLastTime"
            case requestId = "RequestId"
        }
    }
}