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

extension Live {
    /// 删除水印
    ///
    /// 删除水印。
    @inlinable
    public func deleteLiveWatermark(_ input: DeleteLiveWatermarkRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteLiveWatermarkResponse > {
        self.client.execute(action: "DeleteLiveWatermark", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除水印
    ///
    /// 删除水印。
    @inlinable
    public func deleteLiveWatermark(_ input: DeleteLiveWatermarkRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveWatermarkResponse {
        try await self.client.execute(action: "DeleteLiveWatermark", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteLiveWatermark请求参数结构体
    public struct DeleteLiveWatermarkRequest: TCRequestModel {
        /// 水印 ID。
        /// 在添加水印接口 [AddLiveWatermark](/document/product/267/30154) 调用返回值中获取水印 ID。
        /// 或DescribeLiveWatermarks接口返回的水印ID。
        public let watermarkId: Int64
        
        public init (watermarkId: Int64) {
            self.watermarkId = watermarkId
        }
        
        enum CodingKeys: String, CodingKey {
            case watermarkId = "WatermarkId"
        }
    }
    
    /// DeleteLiveWatermark返回参数结构体
    public struct DeleteLiveWatermarkResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}