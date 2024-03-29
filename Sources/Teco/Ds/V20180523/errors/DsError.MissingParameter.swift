//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

extension TCDsError {
    public struct MissingParameter: TCDsErrorType {
        enum Code: String {
            case contractFileNameError = "MissingParameter.ContractFileNameError"
            case contractFilePathError = "MissingParameter.ContractFilePathError"
            case imageMeasurementNullError = "MissingParameter.ImageMeasurementNullError"
            case keywordNullError = "MissingParameter.KeywordNullError"
            case locationNullError = "MissingParameter.LocationNullError"
            case moError = "MissingParameter.MOError"
            case offsetCoordNullError = "MissingParameter.OffsetCoordNullError"
            case signerNullError = "MissingParameter.SignerNullError"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 合同名称不能为空。
        public static var contractFileNameError: MissingParameter {
            MissingParameter(.contractFileNameError)
        }

        /// 合同文件路径不能为空。
        public static var contractFilePathError: MissingParameter {
            MissingParameter(.contractFilePathError)
        }

        /// 签署关键字信息-签章图片宽度/高度不能为空。
        public static var imageMeasurementNullError: MissingParameter {
            MissingParameter(.imageMeasurementNullError)
        }

        /// 签署关键字信息-关键字不能为空。
        public static var keywordNullError: MissingParameter {
            MissingParameter(.keywordNullError)
        }

        /// 授权IP地址不能为空。
        public static var locationNullError: MissingParameter {
            MissingParameter(.locationNullError)
        }

        /// 找不到 module 或 operation。
        public static var moError: MissingParameter {
            MissingParameter(.moError)
        }

        /// 签署关键字信息-偏移坐标不能为空。
        public static var offsetCoordNullError: MissingParameter {
            MissingParameter(.offsetCoordNullError)
        }

        /// 签署人不能为空。
        public static var signerNullError: MissingParameter {
            MissingParameter(.signerNullError)
        }

        public func asDsError() -> TCDsError {
            let code: TCDsError.Code
            switch self.error {
            case .contractFileNameError:
                code = .missingParameter_ContractFileNameError
            case .contractFilePathError:
                code = .missingParameter_ContractFilePathError
            case .imageMeasurementNullError:
                code = .missingParameter_ImageMeasurementNullError
            case .keywordNullError:
                code = .missingParameter_KeywordNullError
            case .locationNullError:
                code = .missingParameter_LocationNullError
            case .moError:
                code = .missingParameter_MOError
            case .offsetCoordNullError:
                code = .missingParameter_OffsetCoordNullError
            case .signerNullError:
                code = .missingParameter_SignerNullError
            }
            return TCDsError(code, context: self.context)
        }
    }
}
