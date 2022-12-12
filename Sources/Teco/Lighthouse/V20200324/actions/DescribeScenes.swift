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

extension Lighthouse {
    /// DescribeScenes请求参数结构体
    public struct DescribeScenesRequest: TCRequestModel {
        /// 使用场景ID列表。
        public let sceneIds: [String]?
        
        /// 偏移量，默认为 0。
        public let offset: Int64?
        
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?
        
        public init (sceneIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.sceneIds = sceneIds
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case sceneIds = "SceneIds"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeScenes返回参数结构体
    public struct DescribeScenesResponse: TCResponseModel {
        /// 使用场景列表。
        public let sceneSet: [Scene]
        
        /// 使用场景总数量。
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case sceneSet = "SceneSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查看使用场景列表
    ///
    /// 本接口(DescribeScenes)用于查看使用场景列表。
    @inlinable
    public func describeScenes(_ input: DescribeScenesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeScenesResponse > {
        self.client.execute(action: "DescribeScenes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看使用场景列表
    ///
    /// 本接口(DescribeScenes)用于查看使用场景列表。
    @inlinable
    public func describeScenes(_ input: DescribeScenesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScenesResponse {
        try await self.client.execute(action: "DescribeScenes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
