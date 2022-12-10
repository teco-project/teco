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

extension Ocr {
    /// 条码信息查询
    ///
    /// 本接口支持条形码备案信息查询，返回条形码查询结果的相关信息，包括产品名称、产品英文名称、品牌名称、规格型号、宽度、高度、深度、关键字、产品描述、厂家名称、厂家地址、企业社会信用代码13个字段信息。
    /// 产品优势：直联中国物品编码中心，查询结果更加准确、可靠。
    @inlinable
    public func queryBarCode(_ input: QueryBarCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryBarCodeResponse > {
        self.client.execute(action: "QueryBarCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 条码信息查询
    ///
    /// 本接口支持条形码备案信息查询，返回条形码查询结果的相关信息，包括产品名称、产品英文名称、品牌名称、规格型号、宽度、高度、深度、关键字、产品描述、厂家名称、厂家地址、企业社会信用代码13个字段信息。
    /// 产品优势：直联中国物品编码中心，查询结果更加准确、可靠。
    @inlinable
    public func queryBarCode(_ input: QueryBarCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryBarCodeResponse {
        try await self.client.execute(action: "QueryBarCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryBarCode请求参数结构体
    public struct QueryBarCodeRequest: TCRequestModel {
        /// 条形码
        public let barCode: String
        
        public init (barCode: String) {
            self.barCode = barCode
        }
        
        enum CodingKeys: String, CodingKey {
            case barCode = "BarCode"
        }
    }
    
    /// QueryBarCode返回参数结构体
    public struct QueryBarCodeResponse: TCResponseModel {
        /// 条码
        public let barCode: String
        
        /// 条码信息数组
        public let productDataRecords: [ProductDataRecord]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case barCode = "BarCode"
            case productDataRecords = "ProductDataRecords"
            case requestId = "RequestId"
        }
    }
}