function varargout = curvas_superf(varargin)
% CURVAS_SUPERF MATLAB code for curvas_superf.fig
%      CURVAS_SUPERF, by itself, creates a new CURVAS_SUPERF or raises the existing
%      singleton*.
%
%      H = CURVAS_SUPERF returns the handle to a new CURVAS_SUPERF or the handle to
%      the existing singleton*.
%
%      CURVAS_SUPERF('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CURVAS_SUPERF.M with the given input arguments.
%
%      CURVAS_SUPERF('Property','Value',...) creates a new CURVAS_SUPERF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before curvas_superf_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to curvas_superf_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help curvas_superf

% Last Modified by GUIDE v2.5 01-Dec-2014 21:21:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @curvas_superf_OpeningFcn, ...
                   'gui_OutputFcn',  @curvas_superf_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before curvas_superf is made visible.
function curvas_superf_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to curvas_superf (see VARARGIN)

% Choose default command line output for curvas_superf
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes curvas_superf wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = curvas_superf_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in curvas_button.
function curvas_button_Callback(hObject, eventdata, handles)
% hObject    handle to curvas_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bezier_capture

% --- Executes on button press in superf_button.
function superf_button_Callback(hObject, eventdata, handles)
% hObject    handle to superf_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
superficie

% --- Executes on button press in help_button.
function help_button_Callback(hObject, eventdata, handles)
% hObject    handle to help_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpdlg('Software desenvolvido para a disciplina de Computação Gráfica com exemplos de um algoritmo de Curvas e um de discretização de uma superfície','Ajuda!!!')