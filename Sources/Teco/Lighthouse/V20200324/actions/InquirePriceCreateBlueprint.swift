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
    /// 创建镜像询价
    ///
    /// 本接口 (InquirePriceCreateBlueprint) 用于创建镜像询价。
    @inlinable
    public func inquirePriceCreateBlueprint(_ input: InquirePriceCreateBlueprintRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InquirePriceCreateBlueprintResponse > {
        self.client.execute(action: "InquirePriceCreateBlueprint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建镜像询价
    ///
    /// 本接口 (InquirePriceCreateBlueprint) 用于创建镜像询价。
    @inlinable
    public func inquirePriceCreateBlueprint(_ input: InquirePriceCreateBlueprintRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InquirePriceCreateBlueprintResponse {
        try await self.client.execute(action: "InquirePriceCreateBlueprint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// InquirePriceCreateBlueprint请求参数结构体
    public struct InquirePriceCreateBlueprintRequest: TCRequestModel {
        /// 自定义镜像的个数。默认值为1。
        public let blueprintCount: Int64?
        
        public init (blueprintCount: Int64?) {
            self.blueprintCount = blueprintCount
        }
        
        enum CodingKeys: String, CodingKey {
            case blueprintCount = "BlueprintCount"
        }
    }
    
    /// InquirePriceCreateBlueprint返回参数结构体
    public struct InquirePriceCreateBlueprintResponse: TCResponseModel {
        /// 自定义镜像的价格参数。
        public let blueprintPrice: BlueprintPrice
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case blueprintPrice = "BlueprintPrice"
            case requestId = "RequestId"
        }
    }
}
