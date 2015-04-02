function varargout = superficie(varargin)
% SUPERFICIE MATLAB code for superficie.fig
%      SUPERFICIE, by itself, creates a new SUPERFICIE or raises the existing
%      singleton*.
%
%      H = SUPERFICIE returns the handle to a new SUPERFICIE or the handle to
%      the existing singleton*.
%
%      SUPERFICIE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUPERFICIE.M with the given input arguments.
%
%      SUPERFICIE('Property','Value',...) creates a new SUPERFICIE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before superficie_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to superficie_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help superficie

% Last Modified by GUIDE v2.5 01-Dec-2014 21:31:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @superficie_OpeningFcn, ...
                   'gui_OutputFcn',  @superficie_OutputFcn, ...
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


% --- Executes just before superficie is made visible.
function superficie_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to superficie (see VARARGIN)

% Choose default command line output for superficie
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes superficie wait for user response (see UIRESUME)
% uiwait(handles.figure1);
grid on;

% --- Outputs from this function are returned to the command line.
function varargout = superficie_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1



function ed_Callback(hObject, eventdata, handles)
% hObject    handle to ed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed as text
%        str2double(get(hObject,'String')) returns contents of ed as a double
equacao=get(hObject,'String');
handles.ed=equacao;
guidata(hObject,handles);
% --- Executes during object creation, after setting all properties.
function ed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double
infr=str2double(get(hObject,'String'));
handles.a=infr;
guidata(hObject,handles);
% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double
sup=str2double(get(hObject,'String'));
handles.b=sup;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cc1_Callback(hObject, eventdata, handles)
% hObject    handle to cc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cc1 as text
%        str2double(get(hObject,'String')) returns contents of cc1 as a double
cond1=str2double(get(hObject,'String'));
handles.cc1=cond1;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function cc1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cc2_Callback(hObject, eventdata, handles)
% hObject    handle to cc2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cc2 as text
%        str2double(get(hObject,'String')) returns contents of cc2 as a double
cond2=str2double(get(hObject,'String'));
handles.cc2=cond2;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function cc2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cc2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function npontos_Callback(hObject, eventdata, handles)
% hObject    handle to npontos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of npontos as text
%        str2double(get(hObject,'String')) returns contents of npontos as a double
np=str2double(get(hObject,'String'));
handles.n=np;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function npontos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to npontos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ordem_Callback(hObject, eventdata, handles)
% hObject    handle to ordem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ordem as text
%        str2double(get(hObject,'String')) returns contents of ordem as a double
orde=str2double(get(hObject,'String'));
handles.ord=orde;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function ordem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ordem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function opt_Callback(hObject, eventdata, handles)
% hObject    handle to opt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of opt as text
%        str2double(get(hObject,'String')) returns contents of opt as a double
opcao=get(hObject,'String');
handles.opt=opcao;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function opt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to opt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in discretizar.
function discretizar_Callback(hObject, eventdata, handles)
% hObject    handle to discretizar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of discretizar
[malha,discret]=mdf_malha(handles.ed,handles.a,handles.b,handles.cc1,handles.cc2,handles.n,handles.ord,handles.opt);
surf(malha);
handles.discr=discret;
guidata(hObject,handles);
% --- Executes on button press in subdividir.
function subdividir_Callback(hObject, eventdata, handles)
% hObject    handle to subdividir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
div=4;
[malha_sub m]=malha_ret(handles.discr,div);
surf(m);
